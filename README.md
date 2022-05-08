
Overview
--------------------------------------------
* Name: ccryptmenu
* Description: 

Bash Script, TUI wrapper for ccrypt,  
ccrypt is a utility for encrypting and decrypting files and streams

Table of contents
---------------------------

  * [Installation](#installation)
  * [Usage](#usage)
  * [Files and setup](#files-and-setup)
  * [Dependencies](#dependencies)
  * [Features](#features)

Installation
-----------------------------------------------

Install by makefile on Linux OS.

```sh
curl -sL https://github.com/gavinlyonsrepo/ccryptmenu/archive/1.1.tar.gz | tar xz
cd ccryptmenu-1.1
sudo make install
```

Usage
-------------------------------------------
Type in terminal, for options( -v , -h, -c, -d) see manpage for details

```sh
ccryptmenu [options]
```

Or select the icon. The program installs an icon in system application menus.

![icon](https://raw.githubusercontent.com/gavinlyonsrepo/ccryptmenu/master/desktop/ccryptmenuicon.png)


Files and setup
-----------------------------------------

Configfile at $HOME/.config/ccryptmenu/ccryptmenu.cfg
Configfile path file and contents cretaed if missing( eg on first start)
Config file contains CM_ACTIVEFILE variable, full path to file.
Example config file and return codes in documentation section.
Uses the $EDITOR variable for text editor, if not set it uses NANO as default.
Man page installed.

Dependencies
-------------------------------------

1. [ccrypt](http://ccrypt.sourceforge.net/) ,  v1.11
2. [bashmultitool](https://github.com/gavinlyonsrepo/bashmultitool) , v2.0 Bash library , NOTE: written by Author.
3. [dialog](https://www.linuxjournal.com/article/2807) , v1.3 , optional For menu selection for change active  file path.

Features
----------------------

![ss](https://raw.githubusercontent.com/gavinlyonsrepo/ccryptmenu/master/documentation/screenshot/screenshot1.png)
