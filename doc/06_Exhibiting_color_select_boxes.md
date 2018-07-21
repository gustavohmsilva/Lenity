## Usage:
```
lenity.colorselection(gui, title, showPalette, r, g, b, timeout)
```
The entry function is the equivalent to zenity --entry option, and it collects data typed by the user with an ok and cancel button. this function return a string containing the text typed.

### gui:
This parameter is used to select between Zenity (GTK) or Qarma (Qt4/5). To use Zenity as the GUI dialog just put nil, 0 or the string 'zenity', for Qarma, just put the string 'qarma'

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### showPalette:
This is a boolean value that alter the mode in which the dialog window will start, if true, it will show a table with predefined colors, and the user will need to manually click in the right icon to personalize with other colors on a gradient+alpha color window. If it set to false, or nil, or 0, the gradient+alpha color window will be the only one to appear.

### R, G and B:
Those are really self explanatory fields, if you want a color to be set by default, fill this data with 0 to 255 (rgb collor pattern). Be advised that this field don't play well with a "true" showPalette. if the color inserted isn't present on the color table, he will flip to the standard one.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.
