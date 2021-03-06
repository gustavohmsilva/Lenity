# LENITY
Lenity is a small project aiming to make ~~zenity~~ writing scripts with GUI's more practical in the Lua language. We're aiming in an easy function oriented way to call zenity and Qarma dialogs directly from Lua.

<p align="center">
  <img src="https://i.imgur.com/jbMgrG1.gif">
</p>

This project was created mainly by my need to be able to just call zenity and Qarma dialogs from inside my Lua scripts making easy to write really simple "apps" that present a visual information to users who are afraid of the terminal. In theory, with this script you are able to just type info('title','text of the info message') to open the an info box on zenity or Qarma from inside of your Lua scripts, for example.

### Usage:
Normally, with zenity (from inside a Lua script or the Lua interpreter):
```
f = io.popen("zenity --entry --title='window title' --text='window example text'")
typedByTheUser = f:read("*a"):gsub("\n","")
f:close()
```

Or, with Qarma (from inside a Lua script or the Lua interpreter):
```
f = io.popen("qarma --entry --title='window title' --text='window example text'")
typedByTheUser = f:read("*a"):gsub("\n","")
f:close()
```


With Lenity:
```
lenity = require 'lenity'
lenity.entry(nil,'window title','window example text')
```

### Milestones:
 * Fully implement tests for fields
 * ~~Implement Entry~~
 * ~~Implement Info~~
 * ~~Implement Calendar~~
 * ~~Implement Error~~
 * ~~Implement file selection~~
 * ~~Implement list~~
 * ~~Implement notification~~ +
 * Implement progress ++
 * ~~Implement question~~
 * ~~Implement text information~~
 * ~~implement warning~~
 * Implement scale +++
 * ~~Implement color selection~~
 * Implement forms
 * ~~Implement Password~~
 * ~~Expanding to Qarma~~


<i> OBS 1: Replaced for notify-send due to poor Zenity Implementation of --notification. </i>

<i> OBS 2: Due to Zenity implementation, it's only possible to create --progress pulsating variant. </i>

<i> OBS 3: Due to Zenity implementation, it's only possible to create --print-partial variant of this. </i>


### Licensing:
This repository is entirely Open Source, licensed under GNU General Public License 3.0, 29 June 2007.
All work derivative work and/or third party distribution must keep the name of it's creator and it's contributors.

### Contributors:
This is the official contributors list, if you had collaborated with the project with code, please add your name to this list and someone will review the push request shortly.
 * [Gustavo Henrique Machado da Silva](https://gitlab.com/gustavohmsilva)   
 * [Edson Vasconcelos](https://gitlab.com/edsondsv)
