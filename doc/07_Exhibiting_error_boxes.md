## Usage:
```
lenity.error(gui, title, text, noWrap, noMarkup, width, height, timeout)
```
The error function is the equivalent to zenity --error option, and display a simple message and a OK button so the user acknowledge that an error happened. this function doesn't return anything as there isn't any return from the user other than clicking OK.

### gui:
This parameter is used to select between Zenity (GTK) or Qarma (Qt4/5). To use Zenity as the GUI dialog just put nil, 0 or the string 'zenity', for Qarma, just put the string 'qarma'

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### text:
This is the proper text that is exhibited to the user. It accepts Text, and for additional personalization, supports [Pango Markup](https://developer.gnome.org/pango/stable/PangoMarkupFormat.html).

### noWrap:
noWrap is a boolean variable, that determines if the text message will break the text if the variable text provide it with more content that the window width may handle for example. noWrap also accept nil as it's content.

### noNarkup:
NoMarkup is a boolean variable, that determines if the text will support pango Markdown or not. noMarkup also accept nil or zero as it's content, which will default it to false.

### Width and height:
Pretty self explanatory, both variables must have a number, nil, or zero as it's parameters, you can also not fill it at all and a width and height will be given to you by zenity based on the text width and formatting.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.
