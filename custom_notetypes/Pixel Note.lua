function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Pixel Note' then
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'PIXEL_NOTE_assets');--Change texture
				setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false);
			else
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'PIXEL_NOTE_assets');--Change texture
				setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false);
			end
		end
	end
	--debugPrint('Script started!')
end