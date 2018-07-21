## Usage:
```
lenity.calendar(gui, title, text, month, day, year, dateFormat, width, height, noMarkup, timeout)
```
The calendar function exhibits a calendar selection box so the user can input a date, the function will return a date in the selected format in dateFormat. You may also add a text to the calendar dialog in order to inform the user of what date he must put in it.

### gui:
This parameter is used to select between Zenity (GTK) or Qarma (Qt4/5). To use Zenity as the GUI dialog just put nil, 0 or the string 'zenity', for Qarma, just put the string 'qarma'

### title:
The title parameter accepts a string, and it's content will be displayed in the top of the GUI window.

### text:
This is the proper text that is exhibited to the user. It accepts Text, and for additional personalization, supports [Pango Markup](https://developer.gnome.org/pango/stable/PangoMarkupFormat.html).

### month:
This field accept nil or 0 as a default, the default in this field will also invalidate day and year, as they must be entered together.

### day:
The day field must be entered if month is set, and accepts a value between 1 and 31, if month is pointed to 0 or nil, no mather the data in here, it won't be used at all.

### year:
This field accepts year in four digits and will only be used if month and day receive valid data as well. Those date fields are responsable for the initial date on the form, and will return as "default" if the user won't ender a new date.

### dateFormat:
DateFormat is a string field, and will format the exit of the date from the form. "%d-%m%Y" will return DD-MM-MMM, "%d/%m%y" will return DD/MM/YY, "%A, %d/%m/%y" will return weekday, DD/MM/YY and etc. For a complete guide of accepted wilcards, refer to linux shell standard date wildcard convention. Also accepts nil or 0 for no input, in that mode, it will return the Operating System standard format.

### Width and height:
Pretty self explanatory, both variables must have a number, nil, or zero as it's parameters, you can also not fill it at all and a width and height will be given to you by zenity based on the text width and formatting.

### noNarkup:
NoMarkup is a boolean variable, that determines if the text will support pango Markdown or not. noMarkup also accept nil or zero as it's content, which will default it to false.

### timeout:
This is a number variable field, fill something if you want that the dialog disapears after a certain period of time. It also handles nil and 0 as no time limit for the form to be filled.
