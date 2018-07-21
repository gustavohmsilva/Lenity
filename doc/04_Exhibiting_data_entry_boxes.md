## Usage:
```
lenity.entry(gui, title, text, entryText, isPassword, width, height, timeout)
```
The entry function is the equivalent to zenity --entry option, and it collects data typed by the user with an ok and cancel button. this function return a string containing the text typed.

### gui:
This parameter is used to select between Zenity (GTK) or Qarma (Qt4/5). To use Zenity as the GUI dialog just put nil, 0 or the string 'zenity', for Qarma, just put the string 'qarma'

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### text:
This is the proper text that is exhibited to the user. It accepts Text, and for additional personalization, supports [Pango Markup](https://developer.gnome.org/pango/stable/PangoMarkupFormat.html).

### entryText:
This variable should contain the data you want to appear by default inside de data entry field of the dialog window, it is a string value and it isn't compatible with Pango Markup, be advised.

### isPassword:
This is a variable that houses a boolean value (or nil, nor zero, both for false). If pointed to false, the entry form will be just an text entry form, if is pointed as true, it will hide the text typed by the user much like a password box (with no user field!).

### Width and height:
Pretty self explanatory, both variables must have a number, nil, or zero as it's parameters, you can also not fill it at all and a width and height will be given to you by zenity based on the text width and formatting.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.
