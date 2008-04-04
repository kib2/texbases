# -*- coding: utf-8 -*-
#!/usr/bin/python

__author__="Kibleur Christophe (kib2@free.fr)"
__date__="4 Avril 2008"
__copyright__="Copyright 2008 Kibleur Christophe"
__license__="GPL"
__version__="0.1"
__URL__="http://snippets.dzone.com/posts/show/2887"

import os
import sys
import string # pour les templates
import shutil # pour la copie de fichiers
from urlparse import urlparse
from subprocess import call

# Imports de Gtk2
import gtk
import gtk.glade
import gtksourceview2 as gsv
import pango
import poppler
import cairo
import gobject

## TODO:
# Un fichier de configuration a la place des variables globales
# Dans open_file ouvrir aussi les pdf
# Pouvoir modifier & sauvegarder le fichier LaTeX edite
# Voir le niveau de zoom dans la statusbar
# Plusieurs feuilles de template

## Variables globales : je sais, c'est pas beau
ZOOM = 1.2 # niveau de zoom dans la vue pdf
MYFONTS = r"DejaVu Sans Mono 12"
EXTENSIONS = ('.tex', '.asy','.mp','.py')

APPLIREP = os.getcwd()
MYHOME = os.path.join(APPLIREP,'base')
NIVEAUX = os.listdir(MYHOME)
TEMPLATES_DIR = os.path.join(APPLIREP,'templates')
SORTIE_DIR = os.path.join(APPLIREP,'sortie')
TEMPDIR = os.path.join(APPLIREP,'temp')
PAGE_ACCEUIL = os.path.join(APPLIREP,r"prem.pdf")

# Un petit template entre chaque exo
Ex_templ = string.Template(r"""
%----------------------
% Exercice numéro $numexo
%----------------------
\exo
\par
""")

def writesep(*args):
    sep = os.sep
    return sep.join(*args)

class Syracuse:

    def __init__(self):

        #
        self.pdf_url = "file://" + PAGE_ACCEUIL
        # On recupere le fichier glade en XML
        self.wTree = gtk.glade.XML("texbases.glade")
        
        # Gestion des signaux de Glade
        #Create our dictionay and connect it
        glade_signals = {
            "on_button_plus_clicked" : self.on_button_plus_clicked,
            "on_button_minus_clicked" : self.on_button_minus_clicked,
            "on_button_compose_clicked" : self.on_button_compose_clicked,
            "on_button_out_clicked" : self.on_button_out_clicked,
                #"on_MainWindow_destroy" : gtk.main_quit
                }
        self.wTree.signal_autoconnect(glade_signals)
        
        # StatusBar
        self.statusbar = self.wTree.get_widget("statusbar")

        # Fabrique view et buffer de texte
        self.getViewAndSetBuffer()
        sw = self.wTree.get_widget("scrolledwindow1")
        sw.add(self.view)
        self.setupView()
        self.view.show()
        
        self.setPDFBox()
        self.setupTreeView()
        
        # Panier d'exos
        self.panier = []

        dic = { "on_window_destroy" : gtk.main_quit }
        self.wTree.signal_autoconnect(dic)
        self.wTree.get_widget("window").show()
        
    def setupTreeView(self):
        """Construit l'arbre des donnees
        """
        ## recupere le scrolledwindow de glade
        self.sw = self.wTree.get_widget("scrolledwindow")
        
        # Creation d'un TreeStore pour une liste arborescente
        # avec une colonne de type chaine, pour servir de modele
        self.treestore = gtk.TreeStore(str, gobject.TYPE_BOOLEAN, str )

        # Construction de l'arbre des documents 
        
        # parcours chaque niveau 6eme,5eme,etc.
        for niv in NIVEAUX :
            niv_line = self.treestore.append(None, ('%s' % niv,None, niv))
            
            # parcours chaque theme Thales,Equations,etc.
            rep_niv = os.path.join(MYHOME,niv)
            for chap in os.listdir(rep_niv) :
                chap_line = self.treestore.append(niv_line, ('%s'%chap,None, writesep((niv,chap))))
                
                # parcours chaque document doc1.tex, doc2.tex, etc..
                rep_doc = os.path.join(rep_niv,chap)
                for doc in [f for f in os.listdir(rep_doc) if os.path.splitext(f)[1] in EXTENSIONS]:
                    doc_line = self.treestore.append(chap_line, ('%s'%doc,None, writesep((niv,chap,doc)) ))
                    
        # creation du TreeView en utilisant notre TreeStore
        self.treeview = gtk.TreeView(self.treestore)
        
        # Ajouter une grille
        #self.treeview.set_grid_lines(gtk.TREE_VIEW_GRID_LINES_BOTH)
        
        # Ajouter des lignes
        self.treeview.set_enable_tree_lines(True)
        
        # creation du TreeViewColumn pour afficher les donnees
        self.tvcolumn = gtk.TreeViewColumn("SyraBases")
        
        # Selection de l'exo
        self.renderer1 = gtk.CellRendererToggle()
        self.renderer1.set_property('activatable', True)
        self.renderer1.connect('toggled', self.on_cross)
        
        # Colonne de selection True/False 
        self.selcolumn = gtk.TreeViewColumn("Panier d'exercices", self.renderer1 )

        # on place tvcolumn dans notre TreeView
        self.treeview.append_column(self.tvcolumn)
        self.treeview.append_column(self.selcolumn)
        self.selcolumn.add_attribute( self.renderer1, "active", 1)

        # creation d'un CellRendererText pour afficher les donnees
        self.cell = gtk.CellRendererText()

        # on place cell dans le TreeViewColumn et on lui permet de s'etirer
        self.tvcolumn.pack_start(self.cell, True)

        # reglage de l'attribut "text" de cell sur la colonne 0
        # recupere le texte dans cette colonne du TreeStore
        self.tvcolumn.add_attribute(self.cell, 'text', 0)

        # on autorise la recherche
        self.treeview.set_search_column(0)

        # on autorise la classement de la colonne
        self.tvcolumn.set_sort_column_id(0)
        
        # place le treeview dans scrolledwindow
        self.sw.add(self.treeview)
        self.treeview.show()
        self.sw.show()
        
        # connexions
        self.treeview.connect('row-activated', self.open_file)
        self.renderer1.connect( 'toggled', self.on_toogle_selection, self.treestore )
        
        
    def on_toogle_selection( self, cell, path, model ):
        """
        Sets the toggled state on the toggle button to true or false.
        """
        model[path][1] = not model[path][1]
        print "Toggle '%s' to: %s" % (model[path][0], model[path][1],)
        return

    def open_file(self, treeview, chemin, treeviewcolumn):
        """Appele lorsqu'un double clic a lieu
        sur une entree de l'arbre.
        """
        model = treeview.get_model()
        iter = model.get_iter(chemin)

        doc = model.get_value(iter, 0)
        the_path = model.get_value(iter, 2)
        print "THE PATH : %s"%the_path
        
        ## set the pdf viewer
        the_path_extens = the_path[-3:] # extension sans le point
        #print "EXTENSION=",the_path_extens
        pdf_doc = the_path[:-3] + 'pdf'
        #print "PDF_DOC=",pdf_doc
        fn = os.path.join(MYHOME,pdf_doc)
        #print "FN=%s"%fn
        
        ## set the buffer with the correct mimetype
        if os.path.isdir(os.path.join(MYHOME,the_path)) :
            pass
        else:
            # Rempli le gtkSourceView du texte LaTeX, mp ou autre
            gsl = self.get_language_for_mime_type("text/x-%s"%(the_path_extens))
            self.buffer.set_language(gsl)
            f = open(os.path.join(MYHOME,the_path),'r')
            self.buffer.set_text(f.read())
            f.close()

        # verifie l'existence d'un pdf
        if not os.path.isfile(fn) :
            self.create_pdf(os.path.join(MYHOME,the_path))

        if os.path.isfile(fn) :
            self.pdf_url = "file://" + fn
            self.on_changed(uri="file://" + fn)
        return

    def OLD_open_file(self, treeview, chemin, treeviewcolumn):
        """Appele lorsqu'un double clic a lieu
        sur une entree de l'arbre.
        """
        model = treeview.get_model()
        iter = model.get_iter(chemin)
        
        doc = model.get_value(iter, 0)
        print "Document : %s"%doc
        
        doc2 = model.get_value(iter, 2)
        print "Document2 : %s"%doc2

        # returns a gtk.TreeIter pointing to the parent of child
        chap_iter = model.iter_parent(iter)
        chap = model.get_value(chap_iter, 0)
        print "Chapitre : %s"%chap
        
        # retourne le niveau
        niv_iter = model.iter_parent(chap_iter)
        niv = model.get_value(niv_iter, 0)
        print "Niveau   : %s"%niv
        
        ## set the pdf viewer
        extens = doc[-3:] # extension sans le point
        pdf_doc = doc[:-3] + 'pdf'
        print pdf_doc
        fn = os.path.join(MYHOME,niv,chap,pdf_doc)
        
        ## set the buffer with the correct mimetype
        gsl = self.get_language_for_mime_type("text/x-%s"%(extens))
        self.buffer.set_language(gsl)
        f = open(os.path.join(MYHOME,niv,chap,doc),'r')
        self.buffer.set_text(f.read())
        f.close()
        
        self.pdf_url = "file://" + fn
        self.on_changed(uri="file://" + fn)
        return

    def setPDFBox(self, uri = "file://" + PAGE_ACCEUIL):
        self.document = poppler.document_new_from_file (uri, None)
        self.n_pages = self.document.get_n_pages()
        self.current_page = self.document.get_page(0)
        self.scale = ZOOM
        self.width, self.height = self.current_page.get_size()
        
        self.surface = cairo.ImageSurface(cairo.FORMAT_RGB24,
                                          int(self.width*self.scale),
                                          int(self.height*self.scale))
        sw = self.wTree.get_widget("scrolledwindow2")
        #sw.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
        
        self.dwg = gtk.DrawingArea()
        self.dwg.set_size_request(int(self.width*self.scale), int(self.height*self.scale))
        self.dwg.connect("expose-event", self.on_expose)
        
        sw.add_with_viewport(self.dwg)
        self.dwg.show()
        
       
    def on_changed(self, uri):
        """Lorsque l'on change de document actualise la
        vue du nouveau pdf
        """
        self.document = poppler.document_new_from_file (uri, None)
        self.current_page = self.document.get_page(0)
        self.dwg.set_size_request(int(self.width*self.scale),
                                  int(self.height*self.scale))
        self.dwg.queue_draw()

    def on_expose(self, widget, event):
        """Evenement apelle lorque la vue pdf
        a besoin d'etre rafraichie
        """
        cr = widget.window.cairo_create()
        cr.set_source_surface(self.surface)
        cr.set_source_rgb(1, 1, 1)
        
        if self.scale != 1:
            cr.scale(self.scale, self.scale)
        
        cr.rectangle(0, 0, self.width*self.scale, self.height*self.scale)
        cr.fill()
        self.current_page.render(cr)
        
    def get_template(self, tpl='feuilleExos.tex'):
        """Retourne un objet de type string.Template
        lu dans le repertoire templates de l'application
        """
        f = open(os.path.join(TEMPLATES_DIR,tpl),'r')
        templ = string.Template(f.read())
        f.close()
        return templ
        
    def on_button_plus_clicked(self, widget):
        """Zoom+ sur le PDF
        """
        self.scale += 0.2
        self.on_changed(self.pdf_url)
        
    def on_button_minus_clicked(self, widget):
        """Zoom- sur le PDF
        """
        self.scale -= 0.2
        self.on_changed(self.pdf_url)
        
    def on_button_out_clicked(self, widget):
        gtk.main_quit()
        
    def create_pdf(self, exercice):
        # recupere le template
        templ = self.get_template("faireExoPdf.tex")
        contenu = []
        
        # repertoire et nom de l'exo (pour y placer le futur pdf)
        exo_path = os.path.split(exercice)
        exo_rep, exo_name = exo_path[0], exo_path[1][:-3]+'pdf'
        
        # entre l'exo dans le template
        ex = open(exercice,'r')
        ex_contents = templ.substitute(exercices= ex.read())  
        contenu.append(ex_contents)
        ex.close()
        
        # creer un fichier temp.tex dans le repertoire temp
        fich = os.path.join(TEMPDIR,'temp.tex')
        tex_temp = open(fich,'w')
        tex_temp.write("".join(contenu))
        tex_temp.close()
        
        # Lance pdflatex sur temp.tex dans le repertoire temp
        cmd = 'pdflatex -output-directory="%s" --shell-escape -interaction=nonstopmode "%s"'%(TEMPDIR, fich)
        print "COMMANDE = %s"%cmd
        pdf_return = call(cmd, shell=True)
        
        # et deplace le fichier dans le rep de l'exercice
        shutil.move(os.path.join(TEMPDIR,'temp.pdf'), os.path.join(exo_rep,exo_name))
        
        # enleve maintenant tout dans temp
        

    def on_button_compose_clicked(self,widget):
        """Compose le document final à partir des selections
        faites par l'utilisateur
        """
        # recupere le template
        templ = self.get_template()
        
        # Il faut differencier les vrais exos (.tex) des autres ressources
        panier_exos = [exo for exo in self.panier if exo.endswith('.tex')]
        
        # Les autres ressources(mp, asy)
        panier_ressources = [res for res in self.panier if (not res.endswith('.tex'))]
        print "panier_ressources = ",panier_ressources
        
        # nescessaire pour la barre de status
        context_id = self.statusbar.get_context_id("Context")
        
        # Si panier d'exos non vide, on incorpore
        # chaque exo dans le template
        
        if panier_exos != []:
            
            contenu = [] # va contenir ce qu'on va mettre ds le template
            
            # Message sur la barre de status
            self.statusbar.pop(context_id)
            self.statusbar.push(context_id, "Création du document final...")
            
            # Separation dans chaque exo
            espaces = r"""
\par
\vspace{3mm}
"""
            # on incorpore chaque exo
            for i,exercice in enumerate(panier_exos):
                ex = open(exercice,'r')
                ex_contents = Ex_templ.substitute(numexo=str(i+1)) + ex.read() + espaces
                contenu.append(ex_contents)
                ex.close()

            # Sauvegarde du fichier final
            sortie = open(os.path.join(SORTIE_DIR,r'out.tex'),'w')
            sortie.write( templ.substitute(exercices="".join(contenu)) )
            sortie.close()
            
            # Et copie des ressources eventuelles
            for res in panier_ressources :
                print "RESSOURCE FOUND! ",res
                res_name = os.path.split(res)[1]
                shutil.copyfile(res,os.path.join(SORTIE_DIR,res_name))
            
            # Message sur la barre de status
            self.statusbar.pop(context_id)
            self.statusbar.push(context_id, "Document final généré...")
    
    def on_cross(self, cellule, chemin):
        """signal de callback une fois la case cochee/decochee
        Suivant les cas, on ajoute/retire un exo du panier
        """
        # Status de la cellule : True ou False
        stat_cell = not cellule.get_active()

        # Recupere la selection
        model = self.treeview.get_model()
        iter = model.get_iter(chemin)
        
        # le texte selectionne + son chemin relatif
        the_path = model.get_value(iter, 2)
        
        # le chemin entier du fichier
        exo = os.path.join(MYHOME,the_path)
        
        if (exo not in self.panier) and (stat_cell):
            self.panier.append(exo)
        if (exo in self.panier) and (not stat_cell):
            self.panier.remove(exo)

    def getViewAndSetBuffer(self):
        """Prepare le gtkSourceview2
        """
        self.buffer = gsv.Buffer()
        mgr = gsv.style_scheme_manager_get_default()
        #style_scheme = mgr.get_scheme('oblivion')
        style_scheme = mgr.get_scheme('tango')
        if style_scheme:
            self.buffer.set_style_scheme(style_scheme)

        gsl = self.get_language_for_mime_type("text/x-tex")
        self.buffer.set_language(gsl)
        self.buffer.set_highlight_syntax(True)
        self.view = gsv.View(self.buffer)
        
    def get_language_for_mime_type(self,mime):
        """Recupere la syntaxe associee a un langage
        """
        lang_manager = gsv.language_manager_get_default()
        lang_ids = lang_manager.get_language_ids()
        for i in lang_ids:
            lang = lang_manager.get_language(i)
            for m in lang.get_mime_types():
                if m == mime:
                    return lang
        return None
    
    def setupView(self):
        v = self.view
        v.set_show_line_numbers(True)
        v.set_tab_width(4)
        v.set_auto_indent(True)
        v.set_insert_spaces_instead_of_tabs(True)
        v.set_wrap_mode(gtk.WRAP_WORD)
        v.set_right_margin(78)
              
        font_desc = pango.FontDescription(MYFONTS)
        if font_desc:
            v.modify_font(font_desc)

if __name__ == "__main__":
    app = Syracuse()
    gtk.main()
