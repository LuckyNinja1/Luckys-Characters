function onEvent(name, value1, value2) 
	if name == 'pixelstrums' then
		if value1 == '' then
		-- do nothing lol
			for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'doki/NOTE_assets');
			end
			for i = 0, getProperty('playerStrums.length')-1 do
				setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
			end
			
			if getPropertyFromClass('ClientPrefs', 'globalAntialiasing') then
				for i = 0,3 do
					setPropertyFromGroup('playerStrums', i, 'antialiasing', true)
					setPropertyFromGroup('opponentStrums', i, 'antialiasing', true)
				end
			end
		else
			for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'PIXEL_NOTE_assets');
			end
			for i = 0, getProperty('playerStrums.length')-1 do
				setPropertyFromGroup('playerStrums', i, 'texture', 'PIXEL_NOTE_assets');
			end
			
			for i = 0,3 do
				setPropertyFromGroup('playerStrums', i, 'antialiasing', false)
				setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)
			end
		end 
	end
end