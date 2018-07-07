## Using Lenity on your Lua scripts:   
Lenity is pretty easy to use. The first step required is to download it, either the ZIP file from GitHub or trough git clone.   
```
git clone https://github.com/LPLBrasil/Lenity.git   
```   
That being completed, you just need to copy and paste lenity.lua to a folder reacheable from your Lua code and implement the module to your code as below:   
```   
nameOfYourChoosing = require 'lenity'   
```   


## I'm receiving a error message:   
If you receive the message "Zenity isn't installed on this system or isn't reacheable within the $PATH of the system.", you probably don't have zenity (which is required) installed on your system. You can do it the following ways:   

### Debian, Ubuntu, Xubuntu, Lubuntu, etc:   
```   
$yes | sudo apt-get install zenity   
```   
### Mac OS X:   
1. Install [Homebrew](https://brew.sh/)   
```   
$/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"   
````  
2. Install Zenity:   
```   
brew install zenity   
```   
### Windows:
1. Install Zenity for Windows from: [Zenity for Windows - Repo by kvaps](https://github.com/kvaps/zenity-windows)   
