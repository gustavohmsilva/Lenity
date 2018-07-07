## Usage:
```
lenity.password(title, showUsername, okLabel, cancelLabel, noMarkup, timeout)
```
The password function is the equivalent to zenity --password option, and display a simple login and password dialog to be filled by the user, with the standard ok and cancel buttons so the user can confirm or avoid filling the field. This function returns a string with the information USER|PASSWORD entered.

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### showUsername:
This is a boolean variable (also accepts 0 or nil for false) to show the dialog with both fields, user and password, or only the password to be entered.

### okLabel:
okLabel is a variable that points to the text that replace the standard "Ok" text inside the confirm button. It accepts a valid string, or nil or 0 to pass through it and just display the standard Ok button.

### cancelLabel:
Same of okLabel, but for the cancel/no button. Also accepts nil or 0 as bypass option.

### noNarkup:
NoMarkup is a boolean variable, that determines if the text will support pango Markdown or not. noMarkup also accept nil or zero as it's content, which will default it to false.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.   
   
   
**IMPORTANT:** This implementation is very poor by Zenity's part. Isn't it possible to change text, size of the windows and wrapping of the text. This can only be updated though, when the developers of Zenity decided to make this better.
