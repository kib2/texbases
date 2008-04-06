========
TeXBases
========

.. contents::

.. image:: /home/kib/Bureau/RST/TeXBases/img/TeXBases2_small.png
    :scale: 100
    :alt: alternativeText
    :align: center
    :target: /home/kib/Bureau/RST/TeXBases/img/TeXBases2.png

----

.. image:: /home/kib/Bureau/RST/TeXBases/img/TeXBases3_small.png
    :scale: 100
    :alt: alternativeText
    :align: center
    :target: /home/kib/Bureau/RST/TeXBases/img/TeXBases3.png

----

.. image:: /home/kib/Bureau/RST/TeXBases/img/TeXBases_small.png
    :scale: 100
    :alt: alternativeText
    :align: center
    :target: /home/kib/Bureau/RST/TeXBases/img/TeXBases.png

Mise en garde
=============

Ce logiciel est une beta version, n'attendez pas de lui des fonctionnalités 
avancées. Sachez enfin que TeXBases est ma première application utilisant le 
toolkit Gtk avec Python et que je suis loin de le maîtriser autant que Qt4.

J'ai fait ce choix uniquement parce que seul Gtk me permettait d'avoir une vue
réèlle d'un document pdf par le biais de la librairie Poppler.

Il reste pour le moment des incohérences nombreuses, citons :

- un menu est visible mais non utilisable.

- on ne peut pas modifier un fichier édité, tout simplement parce que la 
  sauvegarde n'a pas encore été implémentée.

- Dans l'arbre des documents, les niveaux et chapitres possèdent des cases
  dont il ne faut surtout pas se servir (ils ne servent que pour les 
  documents LaTeX).

- les gabarits LaTeX sont modifiables dans le répertoire 'templates' :
  
  * `faireExoPdf.tex` est le gabarit permettant le rendu de votre exercice au
    format pdf, je l'ai adapté pour satisfaire mes besoins. Il y a donc de 
    grandes chances qu'il ne vous satisfasse pas. Sachez cependant que vous ne
    devez garder la variable `$exercices` telle quelle dans celui-ci.
    
  * `feuille_Exo_1` est le gabarit permettant le rendu de votre document 
    final à partir du panier d'exercices. Là encore, gardez la variable 
    `$exercices`. Vous pouvez créer les vôtres, c'est le but !

  * Entre deux exercices, on peut placer ce que l'on veut grâce à un gabarit
    nommé `Ex_templ` que vous trouvez cette fois-ci dans le source même de 
    TeXBases, à savoir dans `texbases.py`. Cette variable texte commence vers 
    la ligne 50 et est codée pour le moment comme suit :
    
    .. sourcecode:: python
    
        # Un petit template entre chaque exo
        Ex_templ = string.Template(r"""
        %----------------------
        % Exercice numéro $numexo
        %----------------------
        \exo
        \par
        """) 

    Ici, `\exo` est une commande personnelle, remplacez-là par la vôtre.

Pourquoi ?
==========

Pour administrer une base de données de documents LaTeX (d'autres
formats sont aussi supportés, comme MetaPost et Asymptote) comme le font les 
sites de `Tex au Collège <http://melusine.eu.org/syracuse/poulecl/>`_ , 
`ExoMatik <http://www.exomatik.net/>`_ , mais en local, c'est à dire au 
niveau de votre machine et sans avoir besoin d'une connexion Internet.

Les choix
=========

Pour mettre au point un tel système, il a fallu faire un choix parmi une 
multitude de possibilités.

La première était d'utiliser une base de données (bdd), mais ce n'est pas 
celle qui a été retenue.

En guise de bdd, TeXBases utilise simplement des répertoires suivant 
le modèle ::

    Repertoire Racine/
      /Niveau
        /Theme1
          document1
          document2
          etc.
        /Theme2
      /Niveau2
      etc.

Sachant que :

- Un niveau sera par exemple une classe (6ème, 1èreS, etc.);

- Un thème sera par exemple un chapitre (inéquations, barycentres, etc.);

- Un document sera un fichier d'extension .tex, .mp, .asy;

Fonctionnalités
================

Pour le moment, TeXBases se contente de faire le minimum, à savoir :

- Visualiser (et pas éditer, c'est prévu mais ce n'est pas encore 
  implémenté) le contenu d'un document (LaTeX, MetaPost ou Asymptote);

- Visualiser ceux-ci au format pdf;

- Composer un document final à partir d'un modèle (plusieurs choix seront 
  possibles par la suite) et de votre selection;

Utilisation
===========

On se déplace dans l'arbre des documents en cliquant sur les petits triangles
pour plier/déplier le contenu de celui-ci.

Une fois sur un document "tex", cliquer deux fois dessus ouvre sa 
vue dans l'éditeur et dans la vue pdf. (Si celle-ci n'est pas disponible, le 
programme se charge de le faire automatiquement).

Cliquer sur la case de la colonne 'Panier d'exercices' d'un document permet de
placer/d'enlver celui-ci du panier. Une fois votre panier rempli, Appuyer sur
le bouton 'Composer'. Le document final apparaîtra dans le répertoire 
'sortie' de TexBases.

Téléchargement
================

TeXBases est pour le moment disponible par le biais du gestionnaire de 
version Git par la commande suivante ::

    git://github.com/kib2/texbases.git

Vous pouvez aussi accéder à sa page sur GitHub par ici `TeXBases sur GitHub <http://github.com/kib2/texbases/tree/master>`_ .

TeXBases dépend de :

- Python 2.5, PyGtk2; 

- PyGtkSourceView2 que vous trouverez ici : https://launchpad.net/poppler-python

- PyPoppler que vous trouverez par là : http://ftp.gnome.org/pub/GNOME/sources/pygtksourceview/2.1/

Il n'a été testé que sous Linux/Ubuntu Gutsy.

Changelog:
==========

* 06.04.2008 :

  - Un gros travail a été réalisé sur les bases d'exos.
    En fait, j'ai réussi à récupérer entièrement la base
    Collège de Syracuse à l'aide d'un script que j'ai écrit.
    Je ne la donne pas ici entièrement, faute de place.

  - Possibilité de sauvegarder les modifications faites
    au fichier en cours d'édition. Ajout du bouton 'Sauvegarder'.

  - Ajout de la propriété 'TreeFold' dans le fichier de config
    qui peut prendre les valeurs 0 ou 1. Si elle est fixée à 1,
    l'arbre des documents sera entièrement déplié, et ne le sera
    pas sinon.

* 05.04.2008 :

  - Renommage massif de fonctions et réorganisation du code.

  - Ajout d'un dialogue 'A propos", même s'il n'est pas encore 
    visible.

  - Ajout du fichier de configuration pour se debarasser des
    variables globales.

  - Ajout d'un dialogue pour pouvoir choisir sa feuille de
    composition d'exercices.

Contact
=======

Si vous avez des remarques/idées/critiques, adressez-vous à ``kib2@free.fr``.
(On pourrait y travailler à plusieurs, d'autant que je ne maîtrise pas encore 
assez bien PyGtk2)
