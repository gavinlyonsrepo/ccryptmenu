
Overview
--------------------------------------------
* Name: Gavin Lyons
* Title : ccryptmenu
* Description: Bash program, wrapper for ccrypt,  ccrypt is a utility for encrypting and decrypting files and streams
* History: See changelog.md
* Copyright: Gavin Lyons C 2020 see License.md

Table of contents
---------------------------

  * [Overview](#overview)
  * [Table of contents](#table-of-contents)
  * [Installation](#installation)
  * [Usage](#usage)
  * [Files and setup](#files-and-setup)
  * [Dependencies](#dependencies)
  * [Features](#features)
  * [Return codes](#return-codes)



Installation
-----------------------------------------------

Install by makefile

Download latest fixed release and run the makefile as per 
terminal commands below for version 1.0 latest release at time of writing.

```sh
curl -sL https://github.com/gavinlyonsrepo/ccryptmenu/archive/1.0.tar.gz | tar xz
cd ccryptmenu-1.0
sudo make install
```

Usage
-------------------------------------------
type in terminal:

```sh
ccryptmenu
```

Type "ccryptmenu" in a terminal to run or select the icon.
The program installs an icon in system application menus under system.

﻿![icon](https://raw.githubusercontent.com/gavinlyonsrepo/ccryptmenu/master/desktop/ccryptmenuicon.png)


Files and setup
-----------------------------------------

Configfile at $HOME/.config/ccryptmenu/ccryptmenu.cfg

Config file contains MYCCFILE variable, full path to file.
Example config file in documentation section.

Uses the $EDITOR variable for text editor, if not set it uses NANO as default.

Dependencies
-------------------------------------

1. [ccrypt](http://ccrypt.sourceforge.net/) 
2. [bashmultitool](https://github.com/gavinlyonsrepo/bashmultitool) , Bash library , NOTE: written by Author.
3. [dialog](https://www.linuxjournal.com/article/2807) , For menu selection for file.

Features
----------------------

﻿![ss](https://raw.githubusercontent.com/gavinlyonsrepo/ccryptmenu/master/screenshot/Screenshot.png)

Return codes
---------------------
Return 0 Controlled exit: User pressed quit from Menus or escape or exit.  
Return 3 ERROR : 3 Path not found to configfile directory.
Retrun 4 ERROR : 4 Config file not found at configfile path directory.
Return 5 ERROR : 5 Unknown error from file option selection(failsafe).
Return 6 ERROR : 6 Chosen *.cpt file not found.
Return 7 ERROR : 7 Chosen file not found, from dialog menu.
