set sourceFolder to choose folder

tell application "Finder"
	set theFiles to files of sourceFolder
	
	repeat with aFile in theFiles
		set fileName to name of aFile
		
		if fileName contains "-" then
			set fileOffset to offset of "-" in fileName
			set folderName to text 1 thru (fileOffset - 1) of fileName
			
			set newFolder to (sourceFolder as text) & folderName & ":"
			if not (exists folder newFolder) then
				make new folder at sourceFolder with properties {name:folderName}
			end if
			
			move aFile to folder newFolder
		end if
	end repeat
end tell