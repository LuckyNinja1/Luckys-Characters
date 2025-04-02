function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
         setPropertyFromGroup('unspawnNotes', i, 'texture', 'doki/NOTE_assets'); --Change texture
        end
    end
end

function onCreatePost()
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'doki/NOTE_assets');
	end
end