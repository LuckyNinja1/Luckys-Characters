function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Duet Note' then --Doesn't let Dad/Opponent notes get ignored
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
		end
	end
end

local DadSingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local DadSingDir = 1
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Duet Note' then
		DadSingDir = direction
		if isSustainNote then
			characterPlayAnim('gf', DadSingAnims[DadSingDir+1], true);
			setProperty('gf.specialAnim', true);
			setProperty('gf.holdTimer', -1);
		else
			characterPlayAnim('gf', DadSingAnims[DadSingDir+1], true);
			setProperty('gf.specialAnim', true);
			setProperty('gf.holdTimer', -1);
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Duet Note' then
		DadSingDir = direction
		if isSustainNote then
			characterPlayAnim('gf', DadSingAnims[DadSingDir+1], true);
			setProperty('gf.specialAnim', true);
			setProperty('gf.holdTimer', -1);
		else
			characterPlayAnim('gf', DadSingAnims[DadSingDir+1], true);
			setProperty('gf.specialAnim', true);
			setProperty('gf.holdTimer', -1);
		end
	end
end