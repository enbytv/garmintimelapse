tell application "Finder"
	set theTopFolder to (choose folder)
	set theFiles to a reference to every file of (entire contents of folder theTopFolder)
	
	--set theNewFolder to make new folder at theTopFolder with properties {name:"Flattened Files"}
	
	set theNewFolder to (theTopFolder as text) & "Flattened Files"
	if not (exists folder theNewFolder) then
		make new folder at theTopFolder with properties {name:"Flattened Files"}
	end if
	
	move theFiles to theNewFolder
end tell
