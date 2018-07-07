## Usage:
```
lenity.fileselection(title, fileFilter, allowMultiple, separator, isDirectory, isSave, overwriteMsg, initialFileName, timeout)
```

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### fileFilter:
This field accept both, a boolean value value false, or nil, or 0, if an array is provided, the array must be filled the following way to correctly reflect the files filtered by the Zenity GUI dialog:
```
acceptedFileTypes = {
                        "Markdown | *.md",
                        "Plain Text | *.txt",
                        "Microsoft Word | *.doc *.docx",
                     }
fileselection(title, acceptedFileTypes, ...
``` 

### separator:
This field must be filled by the character or string of characters you want to be displayed between multiple selections of files in the return of the function. This field will automatically be disabled if allowMultiple is set to false. to disable/bypass it, you can provide them with nil or 0.

### allowMultiple:
This field is a boolean variable intrissically connected to the separator variable, if set to true, it will allow the user to select multiple files or folders. To disable it, fill it with false, or nil or 0.

### isDirectory:
If this field is set to true, this will only allow the user to select one or more (depending on allowMultiple) folders, but never files. To disable/bypass it, you can provide them with nil or 0.

### isSave:
This boolean value must receive true or false (or nil, or 0), if true, it will exhibit to the user a file save dialog, if false (or nil, or 0) is provided, it will only allow you to select files but never to save a new one.

### overwriteMsg:
If isSave is selected, this is a must, provide it with true for showing a secondary message of "Are you sure you want to overwrite this file" if the user decide to save a file over another existing one. If false (or nil, or 0) is provided, this dialog will not show up and the function will be finalized without informing the user that he is overwriting an existing file (USE WITH CAUTION).

### initialFileName:
This field accepts a string with a standard file to the user, if isSave is selected, this file name will be informed in the entry text field for the file name to save, if isSave is tagged as false, it will run though the files in search for the file name you selected. To disable you can just type nil or 0 in this field.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.
