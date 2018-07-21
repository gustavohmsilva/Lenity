## Usage:
```
lenity.notification(title, text, timeout)
```
The standard function is the equivalent to zenity --notification option, but better, because it actually uses the terminal command notify-send. This decision was taken because the original zenity --notification is very buggy. This function returns no value, as it serves only to display information on screen.

### gui:
This parameter is used to select between Zenity (GTK) or Qarma (Qt4/5). To use Zenity as the GUI dialog just put nil, 0 or the string 'zenity', for Qarma, just put the string 'qarma'

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### text:
This is the proper text that is exhibited to the user. It accepts plain text only.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.



**IMPORTANT:** BE ADVISED THAT ALL FIELDS OF THIS FUNCTION ARE REQUIRED.
