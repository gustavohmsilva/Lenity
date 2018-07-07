## Usage:
```
lenity.textinfo(title, filename, isEditable, hasCheckbox, checkboxText, okLabel, cancelLabel, width, height, timeout)
```
The textinfo function is the equivalent to zenity --textinfo option, and display the content of a text file, followed by a range of buttons. This function has it's return modified by the options within its's call, it can return the text modified by the user (if isEditable variable is set to true) or simply a boolean return in most cases. The usage is as follows:

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### filename:
This parameter accepts a string containing the full path to the file. It also accepts 0 or nil for no input.

### isEditable:
isEditable should receive a boolean value (true or false). This value will modify the behavior of the entire function. If false is set, the textinfo function will return the basic return for a positive or negative response form the user, if true, the textinfo function will return the same text that was entered and/or by the user as a string.

### hasCheckbox:
This field should receive true or false, and controls the behavior of the window itself. If set to true, below the text, a checkbox (like those in the TERMS OF SERVICE windows) will appear, if set to false, no TOS checkbox will be visible. As usual, it also accepts 0 or nil, that defaults to false.

### checkboxText:
checkboxText receive a string that will be visible after the checkbox in case hasCheckbox is marked as true. if hasCheckbox is marked as false, this text will be completely ignored, no matter what it receives.

### okLabel:
okLabel is a variable that points to the text that replace the standard "Ok" text inside the confirm button. It accepts a valid string, or nil or 0 to pass through it and just display the standard Ok button.

### cancelLabel:
Same of okLabel, but for the cancel/no button. Also accepts nil or 0 as bypass option.

### Width and height:
Pretty self explanatory, both variables must have a number, nil, or zero as it's parameters, you can also not fill it at all and a width and height will be given to you by zenity based on the text width and formatting.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.   
