# -*- coding: utf-8 -*-
#!/usr/bin/python

## Configuration file : ConfigParser
import ConfigParser


def readConf():
    """Read the blog's configuration file
    """
    config = ConfigParser.RawConfigParser()
    try:
        config.read('texbases.conf')
    except:
        print "You don't have a texbases.conf file inside your directory."
        return

    tbi = "TB_internals"
    zoom   = config.getfloat(tbi, 'ZoomLevel')
    fonts   = config.get(tbi, 'Fonts')
    extensions   = config.get(tbi, 'Extens')
    
    tbf = "TB_folders"
    base = config.get(tbf, 'Base')
    templates = config.get(tbf, 'Templates')
    sortie = config.get(tbf, 'Out')
    tempdir = config.get(tbf, 'Temp')
    acceuil = config.get(tbf, 'HomePic')

    print zoom, fonts, tuple(extensions.split())
    
    print base, templates, sortie, tempdir, acceuil


## Main Programm
def main():
    readConf()

if __name__ == "__main__":
    main()

