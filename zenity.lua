function checkTitle(title)
	if not (title == nil) or not (title == 0) then
		title = ' --title="'..tostring(title)..'"'
	else
		title = ''
	end
	return title
end

function checkText(text)
	if not (text == nil) or not (title == 0) then
		text = ' --text="'..tostring(text)..'"'
	else
		text = ''
	end
	return text
end

function checkShowPalette(showPalette)
	assert(type(showPalette) == 'boolean')
	if showPalette then
		showPalette = ' --show-palette'
	else
		showPalette = ''
	end
	return showPalette
end

function checkIsPassword(isPassword)
	assert(type(isPassword == 'boolean') or type(isPassword) == 'number')
	if isPassword == nil or isPassword == false or isPassword == 0 then
		isPassword = ''
	elseif isPassword == true then
		isPassword = " --hide-text"
	end
	return isPassword
end

function checkDimensions(type, x)
	if x == 0 or x == nil then
		x = ''
	else
		if type == 'height' then
			x = ' --height='..x
		elseif type == 'width' then
			x = ' --width='..x
		end
	end
	return x
end

function checkTimeout(timeout)
	if timeout == 0 or timeout == nil then
		timeout = ''
	else
		assert(type(timeout) == 'number')
		timeout = ' --timeout='..timeout
	end
	return timeout
end

function checkEntryText(entryText)
	if not (entryText == 0) or not (entryText == nil) then
		assert(type(entryText) == 'string')
		entryText = ' --entry-text="'..entryText..'"'
	else
		entryText = ''
	end
	return entryText
end

function checkWindowIcon(windowIcon)
	--TODO: Due to a know bug on zenity this function is not yet implemented...
	-- Bug: https://bugs.launchpad.net/ubuntu/+source/zenity/+bug/998491
	windowIcon = ''
	return windowIcon
end

function checkNoWrap(noWrap)
	assert((type(noWrap) == 'boolean') or (noWrap == nil))
	if noWrap == true then
		noWrap = ' --no-wrap'
	elseif noWrap == false or noWrap == nil then
		noWrap = ''
	end
	return noWrap
end

function buildHex(r, g, b)
	assert(r >= 0 and r < 256)
	assert(g >= 0 and g < 256)
	assert(b >= 0 and b < 256)
	r = string.format("%x", r)
	g = string.format("%x", g)
	b = string.format("%x", b)
	--[[
	TODO: This function below is only required because zenity sucks at
	interpreting hexadecimal colors with less than 6 chars, when zenity
	solve this idiotic problem, this can be discarded.
	]]--
	r = zenitySucks(r)
	g = zenitySucks(g)
	b = zenitySucks(b)
	color = ' --color=#'..r..g..b
	return color
end

function zenitySucks(x)
	assert(string.len(x) < 3)
	if string.len(x) < 2 then
		x = x..x
	end
	return x
end

function checkInitialFileName(initialFileName)
	if initialFileName == nil or initialFileName == 0 then
		initialFileName = ''
	else
		initialFileName = ' --filename='..tostring(initialFileName)
	end
	return initialFileName
end

function checkIfOverwriteMsg(overwriteMsg)
	if overwriteMsg == false or overwriteMsg == nil or overwriteMsg == 0 then
		overwriteMsg = ''
	elseif overwriteMsg then
		overwriteMsg = ' --confirm-overwrite'
	else
		assert(type(overwriteMsg) == 'boolean')
	end
	return overwriteMsg
end

function checkIfSave(isSave)
	if isSave == false or isSave == nil or isSave == 0 then
		isSave = ''
	elseif isSave then
		isSave = ' --save'
	else
		assert(type(isSave) == 'boolean')
	end
	return isSave
end

function checkIfDirectory(isDirectory)
	if isDirectory == false or isDirectory == nil or isDirectory == 0 then
		isDirectory = ''
	elseif isDirectory then
		isDirectory = ' --directory'
	else
		assert(type(isDirectory) == 'boolean')
	end
	return isDirectory
end

function checkSeparator(allowMultiple, separator)
	if allowMultiple == 0 or allowMultiple == nil or allowMultiple == false then
		separator = ''
	elseif allowMultiple then
		if separator == nil or separator == 0 then
			separator = ''
		else
			separator = ' --separator="'..tostring(separator)..'"'
		end
	end
	return separator
end

function checkAllowMultiple(allowMultiple)
	if allowMultiple == 0 or allowMultiple == nil or allowMultiple == false then
		allowMultiple = ''
	elseif allowMultiple then
		allowMultiple = ' --multiple'
	else
		assert(type(allowMultiple) == 'boolean')
	end
	return allowMultiple
end

function checkFileFilter(fileFilter)
	mensagem = ''
	if fileFilter == 0 or fileFilter == nil then
		fileFilter = ''
	else
		for pos in ipairs(fileFilter) do
			mensagem = mensagem..' --file-filter="'..tostring(fileFilter[pos])..'"'
		end
	end
	return mensagem
end

function checkIcons(icon)
	inList = false
	iconsList = {
		"address-book-new",
		"application-exit",
		"appointment-new",
		"call-start",
		"call-stop",
		"contact-new",
		"document-new",
		"document-open",
		"document-open-recent",
		"document-page-setup",
		"document-print",
		"document-print-preview",
		"document-properties",
		"document-revert",
		"document-save",
		"document-save-as",
		"document-send",
		"edit-clear",
		"edit-copy",
		"edit-cut",
		"edit-delete",
		"edit-find",
		"edit-find-replace",
		"edit-paste",
		"edit-redo",
		"edit-select-all",
		"edit-undo",
		"folder-new",
		"format-indent-less",
		"format-indent-more",
		"format-justify-center",
		"format-justify-fill",
		"format-justify-left",
		"format-justify-right",
		"format-text-direction-ltr",
		"format-text-direction-rtl",
		"format-text-bold",
		"format-text-italic",
		"format-text-underline",
		"format-text-strikethrough",
		"go-bottom",
		"go-down",
		"go-first",
		"go-home",
		"go-jump",
		"go-last",
		"go-next",
		"go-previous",
		"go-top",
		"go-up",
		"help-about",
		"help-contents",
		"help-faq",
		"insert-image",
		"insert-link",
		"insert-object",
		"insert-text",
		"list-add",
		"list-remove",
		"mail-forward",
		"mail-mark-important",
		"mail-mark-junk",
		"mail-mark-notjunk",
		"mail-mark-read",
		"mail-mark-unread",
		"mail-message-new",
		"mail-reply-all",
		"mail-reply-sender",
		"mail-send",
		"mail-send-receive",
		"media-eject",
		"media-playback-pause",
		"media-playback-start",
		"media-playback-stop",
		"media-record",
		"media-seek-backward",
		"media-seek-forward",
		"media-skip-backward",
		"media-skip-forward",
		"object-flip-horizontal",
		"object-flip-vertical",
		"object-rotate-left",
		"object-rotate-right",
		"process-stop",
		"system-lock-screen",
		"system-log-out",
		"system-run",
		"system-search",
		"system-reboot",
		"system-shutdown",
		"tools-check-spelling",
		"view-fullscreen",
		"view-refresh",
		"view-restore",
		"view-sort-ascending",
		"view-sort-descending",
		"window-close",
		"window-new",
		"zoom-fit-best",
		"zoom-in",
		"zoom-original",
		"zoom-out",
		"process-working",
		"accessories-calculator",
		"accessories-character-map",
		"accessories-dictionary",
		"accessories-text-editor",
		"help-browser",
		"multimedia-volume-control",
		"preferences-desktop-accessibility",
		"preferences-desktop-font",
		"preferences-desktop-keyboard",
		"preferences-desktop-locale",
		"preferences-desktop-multimedia",
		"preferences-desktop-screensaver",
		"preferences-desktop-theme",
		"preferences-desktop-wallpaper",
		"system-file-manager",
		"system-software-install",
		"system-software-update",
		"utilities-system-monitor",
		"utilities-terminal",
		"applications-accessories",
		"applications-development",
		"applications-engineering",
		"applications-games",
		"applications-graphics",
		"applications-internet",
		"applications-multimedia",
		"applications-office",
		"applications-other",
		"applications-science",
		"applications-system",
		"applications-utilities",
		"preferences-desktop",
		"preferences-desktop-peripherals",
		"preferences-desktop-personal",
		"preferences-other",
		"preferences-system",
		"preferences-system-network",
		"system-help",
		"audio-card",
		"audio-input-microphone",
		"battery",
		"camera-photo",
		"camera-video",
		"camera-web",
		"computer",
		"drive-harddisk",
		"drive-optical",
		"drive-removable-media",
		"input-gaming",
		"input-keyboard",
		"input-mouse",
		"input-tablet",
		"media-flash",
		"media-floppy",
		"media-optical",
		"media-tape",
		"modem",
		"multimedia-player",
		"network-wired",
		"network-wireless",
		"pda",
		"phone",
		"printer",
		"scanner",
		"video-display",
		"emblem-default",
		"emblem-documents",
		"emblem-downloads",
		"emblem-favorite",
		"emblem-important",
		"emblem-mail",
		"emblem-photos",
		"emblem-readonly",
		"emblem-shared",
		"emblem-symbolic-link",
		"emblem-synchronized",
		"emblem-system",
		"emblem-unreadable",
		"face-angel",
		"face-angry",
		"face-cool",
		"face-crying",
		"face-devilish",
		"face-embarrassed",
		"face-kiss",
		"face-laugh",
		"face-monkey",
		"face-plain",
		"face-raspberry",
		"face-sad",
		"face-sick",
		"face-smile",
		"face-smile-big",
		"face-smirk",
		"face-surprise",
		"face-tired",
		"face-uncertain",
		"face-wink",
		"face-worried",
		"flag-aa",
		"application-x-executable",
		"audio-x-generic",
		"font-x-generic",
		"image-x-generic",
		"package-x-generic",
		"text-html",
		"text-x-generic",
		"text-x-generic-template",
		"text-x-script",
		"video-x-generic",
		"x-office-address-book",
		"x-office-calendar",
		"x-office-document",
		"x-office-presentation",
		"x-office-spreadsheet",
		"folder",
		"folder-remote",
		"network-server",
		"network-workgroup",
		"start-here",
		"user-bookmarks",
		"user-desktop",
		"user-home",
		"user-trash",
		"appointment-missed",
		"appointment-soon",
		"audio-volume-high",
		"audio-volume-low",
		"audio-volume-medium",
		"audio-volume-muted",
		"battery-caution",
		"battery-low",
		"dialog-error",
		"dialog-information",
		"dialog-password",
		"dialog-question",
		"dialog-warning",
		"folder-drag-accept",
		"folder-open",
		"folder-visiting",
		"image-loading",
		"image-missing",
		"mail-attachment",
		"mail-unread",
		"mail-read",
		"mail-replied",
		"mail-signed",
		"mail-signed-verified",
		"media-playlist-repeat",
		"media-playlist-shuffle",
		"network-error",
		"network-idle",
		"network-offline",
		"network-receive",
		"network-transmit",
		"network-transmit-receive",
		"printer-error",
		"printer-printing",
		"security-high",
		"security-medium",
		"security-low",
		"software-update-available",
		"software-update-urgent",
		"sync-error",
		"sync-synchronizing",
		"task-due",
		"task-past-due",
		"user-available",
		"user-away",
		"user-idle",
		"user-offline",
		"user-trash-full",
		"weather-clear",
		"weather-clear-night",
		"weather-few-clouds",
		"weather-few-clouds-night",
		"weather-fog",
		"weather-overcast",
		"weather-severe-alert",
		"weather-showers",
		"weather-showers-scattered",
		"weather-snow",
		"weather-storm"
	}
	for index, listItem in ipairs(iconsList) do
		if icon == listItem then
			inList = true
		end
	end
	if inList then
		icon = ' --icon-name="'..icon..'"'
	else
		icon = ''
	end
	return icon
end

function entry(title, text, entryText, isPassword, width, height, timeout)
	-- call validation of fields
	title = checkTitle(title)
	text = checkText(text)
	entryText = checkEntryText(entryText)
	isPassword = checkIsPassword(isPassword)
	height = checkDimensions("height", height)
	width = checkDimensions("width", width)
	timeout = checkTimeout(timeout)
	-- process zenity command and return
	local command = "zenity --entry"..title..text..entryText..isPassword..width..height..timeout
	local f = io.popen(command)
	local l = f:read("*a")
	f:close()
	return l:gsub("\n","")
end

function info(title, text, icon, noWrap, width, height, timeout)
	title = checkTitle(title)
	text = checkText(text)
	icon = checkIcons(icon)
	noWrap = checkNoWrap(noWrap)
	width = checkDimensions('width', width)
	height = checkDimensions('height', height)
	timeout = checkTimeout(timeout)
	command = 'zenity --info'..title..text..icon..noWrap..width..height..timeout
	os.execute(command)
end

function colorselection(title, showPalette, r, g, b, timeout)
	title = checkTitle(title)
	showPalette = checkShowPalette(showPalette)
	color = buildHex(r, g, b)
	timeout = checkTimeout(timeout)
	command = 'zenity --color-selection'..title..showPalette..color
	local f = io.popen(command)
	local l = f:read("*a")
	f:close()
	return l:gsub("\n",""):gsub("rgb%(",""):gsub("%)","")
end

function warning(title, text, icon, noWrap, width, height, timeout)
	title = checkTitle(title)
	text = checkText(text)
	icon = checkIcons(icon)
	noWrap = checkNoWrap(noWrap)
	width = checkDimensions('width', width)
	height = checkDimensions('height', height)
	timeout = checkTimeout(timeout)
	command = 'zenity --warning'..title..text..icon..noWrap..width..height..timeout
	os.execute(command)
end

function fileselection(title, fileFilter, allowMultiple, separator, isDirectory, isSave, overwriteMsg, initialFileName, timeout)
	title = checkTitle(title)
	fileFilter = checkFileFilter(fileFilter)
	separator = checkSeparator(allowMultiple, separator)
	allowMultiple = checkAllowMultiple(allowMultiple)
	isDirectory = checkIfDirectory(isDirectory)
	isSave = checkIfSave(isSave)
	overwriteMsg = checkIfOverwriteMsg(overwriteMsg)
	initialFileName = checkInitialFileName(initialFileName)
	timeout = checkTimeout(timeout)
	command = 'zenity --file-selection'..title..fileFilter..allowMultiple..separator..isDirectory..isSave..overwriteMsg..initialFileName..timeout
	local f = io.popen(command)
	local l = f:read("*a")
	return l:gsub("\n","")
end
