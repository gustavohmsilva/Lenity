## Usage:
```
lenity.list(gui, title, text, allowMultiple, separator, radioOrCheckOrNone, columns, strings, width, height, timeout)
```
The list function is the equivalent to zenity --list option, and display a simple list for single and multiple selection for the user, depending of the options entered. This function returns a string with the information RETURN INFO1|RETURNINFO2|RETURNINFOn entered by the user.

### gui:
This parameter is used to select between Zenity (GTK) or Qarma (Qt4/5). To use Zenity as the GUI dialog just put nil, 0 or the string 'zenity', for Qarma, just put the string 'qarma'

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### allowMultiple:
The allowMultiple parameter accepts a boolean value (true or false), if false is provided, this also disables the next parameter, the separator. If true is provided, it will allow the user to select multiple options if radioOrCheckOrNone is filled with the number 1 or the string "check". It can also receive nil or 0 as a pass through.

### separator:
The separator parameter accepts a string, that it will concatenate to generate a string on the function return with the selections made by the user. Be advised that this only works if "check" or 1 is provided at the radioOrCheckOrNone parameter. It also accepts 0, nil or false as a pass through.

### radioOrCheckOrNone:
The radioOrCheckOrNone parameter selects with option of filling the user should see on the list. if 0 or nil or the string "None" is provided, the list presented will be a simple one. If 1 or the string "check" is provided, it will show the list as a CheckBox list and will return the options selected by the user, separated by the data provided on the separator attribute. If 2 or "radio" is provided, will show a list with radioboxes, and only one would be able to be given back on the return of the function.

### columns:
columns is a where you should put a table containing a series of strings for the columns desired for the list. You should consider that selecting checkboxes or radioboxes on radioOrCheckOrNone will kill the visibility of the first field provided in the attribute strings. This field is mandatory, given the focus of the function.

### strings:
Same of columns, but for the actual strings that will be shown on the list of this function. Mandatory by nature.

### Width and height:
Pretty self explanatory, both variables must have a number, nil, or zero as it's parameters, you can also not fill it at all and a width and height will be given to you by zenity based on the text width and formatting.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.
