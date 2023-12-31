######################################################################
# IsOCRedPDF
#
# Based on dropped files determine if the file is searchable or not. Files not searchable 
#
# 2014-12-24
# Timo Kahle
#
# Changes
#
# v1.0 (2014-12-24)
# o Initial version
#
# v2.0 (2018-11-20)
# + Added Applet functionality (When run by double-clicking, a Spotlight search identifies all PDFs under the current user's home directory and performs the OCR check)
# + Add MinOS check
# + Add check if required brew component "pdftotext" is installed
# + Add check if homebrew is installed
# + Add Notifications
# o Improved detection mechanism for non-OCR'ed PDFs
# o Exchange Droplet.icns with Applet.icns
# - Removed deprecated code
# 
#
#
# ToDo
# o Improve shell script calls
# o Improve overall code stability
# o Simplify code
# o Remove external script and replace with internal code
# o Rework Droplet code
# + Add HTML Output instead of txt
#
#
#
######################################################################

# Environment
property APP_NAME : "IsOCRedPDF"
property APP_VERSION : "2.0"
property APP_ICON : "applet.icns"

# Commands
property FILE_SEARCH_SCRIPT : "IsPDFSearchable.sh"
property CMD_SPOTLIGHT_FIND_PDF : "/bin/bash -l -c 'mdfind kind:pdf -onlyin $HOME'"
property CMD_ISSEARCHABLE_PREFIX : "/usr/local/bin/pdftotext"
property CMD_ISSEARCHABLE_POSTFIX : "- | grep -qE \\S"

# Other
property URL_SUMMARY_FILE_OCRED : "$HOME/Downloads/OCRed.csv"
property URL_SUMMARY_FILE_NOTOCRED : "$HOME/Downloads/NotOCRed.csv"
property HELPER_APP : "Scripts/homebrew-Setup.command"

# Required components
property COMPONENTS_REQUIRED : {"brew", "pdftotext"}
property MACOS_VERSION_MIN : "10.13"

# UI
property UI_TXT_INFO_NOTSUPPORTED : "'" & APP_NAME & "' is not supported on your version of macOS and cannot be run. Please update your macOS version to use '" & APP_NAME & "'."
property UI_ICON_WARNING : " ⚠️ "
property UI_ICON_ERROR : " 🚫 "
property UI_ICON_INFO : " ⓘ "
property UI_TITLE_SUBTITLE : "Summary created in your Downloads folder"
property UI_SUMMARY_NO_ERRORS : "Finished checking documents."
property UI_TITLE_SUMMARY : "OCRed PDF documents"

# Button texts
property BTN_OK : "OK"
property BTN_CONTINUE : "Continue"
property BTN_QUIT : "Quit"
property BTN_OPEN : "Open"
property BTN_CANCEL : "Cancel"



# Droplet
on open selectedItems
	# Define icon resources & title
	#set dlgIcon to (path to resource APP_ICON)
	#set dlgTitle to APP_NAME & " (" & APP_VERSION & ")"
	
	# Path to the script that does the PDF determination magic
	set searchScript to quoted form of (POSIX path of (path to resource FILE_SEARCH_SCRIPT) as string)
	set theSum to ""
	set cnt to 0
	
	repeat with i in selectedItems
		set cnt to cnt + 1
		set theResult to ""
		set theFile to ""
		
		set theFile to quoted form of (POSIX path of i) as text
		
		# Check PDF filetype based on the files extension
		set theFileCheck to i as alias
		set fileIsPDF to IsPDFFile(theFileCheck)
		if fileIsPDF is true then
			
			# Call the PDF OCR check function
			set theResult to ExecEmbeddedScript(searchScript, theFile)
			
			if theResult is false then
				#display dialog "cnt: " & cnt & return & return & theResult & return & return & theFile & " : NOT searchable" with title appDetails buttons {"OK"} default button {"OK"} #with icon dlgIcon
				set theSum to theSum & theFile & return
			end if
		end if
		
	end repeat
	
	#display dialog "Finished checking PDFs. A summary txt file will be created on your Desktop when you select 'OK'." & return & return & theSum buttons {"OK"} default button {"OK"}
	do shell script "echo " & theSum & " >> $HOME/Desktop/nonOCRed.txt"
	
	display notification UI_SUMMARY_NO_ERRORS with title UI_TITLE_SUMMARY & UI_ICON_INFO subtitle UI_TITLE_SUBTITLE
end open


# Applet
on run
	# Define icon resources & title
	#set dlgIcon to (path to resource APP_ICON)
	#set dlgTitle to APP_NAME & " (" & APP_VERSION & ")"
	
	
	# Check macOS Version for compatibility
	# ===================
	if OSVersionSupported(MACOS_VERSION_MIN) is false then
		display dialog UI_TXT_INFO_NOTSUPPORTED with title APP_NAME & UI_ICON_WARNING buttons {BTN_OK} cancel button {BTN_OK} default button {BTN_OK} with icon caution
	end if
	
	
	# ===================
	# Run check for installed dependencies (brew, pdftotext)
	# ===================
	set isRequiredComponentsInstalled to true
	set aMissingComponents to ""
	
	repeat with aComponent in COMPONENTS_REQUIRED
		set isInstalledCMD to IsInstalledCLIComponent(aComponent)
		if isInstalledCMD is false then
			set isRequiredComponentsInstalled to false
			set aMissingComponents to (aMissingComponents & aComponent & return)
		end if
	end repeat
	
	# Check if the user wants to install the missing components
	if isRequiredComponentsInstalled is false then
		set theDependencyInstaller to (display dialog UI_TXT_INFO_NOTINSTALLED & return & return & UI_TXT_MISSING_DEPENDENCIES & return & aMissingComponents & return & return & UI_TXT_CANCEL_CONTINUE with title APP_NAME & UI_ICON_ERROR buttons {BTN_CANCEL, BTN_CONTINUE} default button {BTN_CONTINUE} cancel button {BTN_CANCEL} with icon dlgIcon_Info)
		set theUserReply to button returned of the theDependencyInstaller
		
		if theUserReply is BTN_CONTINUE then
			# Run embedded script to install the required dependecies
			set cmdSetup to POSIX path of (path to resource HELPER_APP)
			tell application "Terminal" to open cmdSetup
		end if
		
	end if
	
	
	# Run mdfind query to get all PDFs in the User's (~) folder
	# ToDo: We will later allow the user to choose which folder to start from
	
	# Path to the script that does the PDF determination magic
	set cntSearchable to 0
	set cntUnSearchable to 0
	
	set selectedItems to (paragraphs of ExecCommand(CMD_SPOTLIGHT_FIND_PDF))
	
	repeat with i in selectedItems
		set theResult to ""
		set theFile to ""
		
		set theFile to quoted form of (POSIX path of i) as text
		
		# Call the PDF OCR check function
		set theResult to ExecCommand(CMD_ISSEARCHABLE_PREFIX & " " & theFile & " " & CMD_ISSEARCHABLE_POSTFIX)
		
		# Searchable
		if theResult is "" then
			set cntSearchable to cntSearchable + 1
			#do shell script "echo " & theFile & "::" & " >> $HOME/Desktop/OCRed.csv"
			do shell script "echo " & theFile & "::" & " >> " & URL_SUMMARY_FILE_OCRED
		else # Handle special cases
			# Special error (e.g. Strato invoices), still valid searchable
			if theResult contains "Permission Error" or theResult contains "Unknown character collection" then
				set cntSearchable to cntSearchable + 1
				#do shell script "echo " & theFile & ":" & theResult & ":" & " >> $HOME/Desktop/OCRed.csv"
				do shell script "echo " & theFile & ":" & theResult & ":" & " >> " & URL_SUMMARY_FILE_OCRED
			else
				# Not searchable
				set cntUnSearchable to cntUnSearchable + 1
				#do shell script "echo " & theFile & ":" & theResult & ":" & " >> $HOME/Desktop/NotOCRed.csv"
				do shell script "echo " & theFile & ":" & theResult & ":" & " >> " & URL_SUMMARY_FILE_NOTOCRED
			end if
		end if
	end repeat
	
	# Display the # of searchable and unsearchable documents in the summary
	
	display notification UI_SUMMARY_NO_ERRORS & "OCR'ed: " & cntSearchable & " / non-OCR'ed: " & cntUnSearchable with title UI_TITLE_SUMMARY & UI_ICON_INFO subtitle UI_TITLE_SUBTITLE
end run



#########################################################################################################################
#########################################################################################################################

# Run a command without admin privileges
on ExecCommand(thisAction)
	try
		set returnValue to do shell script (thisAction)
	on error errMsg
		set returnValue to "Error: " & errMsg
	end try
	
	return returnValue
end ExecCommand


# Valid macOS version
on OSVersionSupported(minSupportedOSXVersion)
	set strOSXVersion to system version of (system info)
	considering numeric strings
		set IsSupportedOSXVersion to strOSXVersion is greater than or equal to minSupportedOSXVersion
	end considering
	
	return IsSupportedOSXVersion
end OSVersionSupported


# Check if a CLI command is installed
on IsInstalledCLIComponent(aCommand)
	set myCMD to aCommand
	try
		set isInstalled to (do shell script "/bin/bash -l -c 'which '" & myCMD)
	on error theError
		#display alert "The command '" & myCMD & "' is not installed"
		return false
	end try
	
	#display alert "The command " & myCMD & " is installed" & return & return & isInstalled
	return true
end IsInstalledCLIComponent


# Run a command without admin privileges
on ExecEmbeddedScript(theCMD, theFile)
	set returnValue to do shell script (theCMD & " " & theFile)
	if returnValue contains "false" then
		return false
	else
		return true
	end if
end ExecEmbeddedScript


# Check if file has extension PDF
on IsPDFFile(aFile)
	tell application "Finder"
		set theExtension to (name extension of aFile)
	end tell
	if theExtension contains "pdf" then
		return true
	else
		return false
	end if
end IsPDFFile