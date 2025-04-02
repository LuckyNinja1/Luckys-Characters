function onEvent(name, value1, value2) 
	if name == 'noteskinchange' then
		if value2 == '' then
		if value1 == '' then
		-- do nothing lol
			for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
			end
		else
			for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', value1);
			end
		end
		else
			if value1 == '' then
		-- do nothing lol
			for i = 0, getProperty('playerStrums.length')-1 do
				setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
			end
		else
			for i = 0, getProperty('playerStrums.length')-1 do
				setPropertyFromGroup('playerStrums', i, 'texture', value1);
			end
		end
		end
	end
end