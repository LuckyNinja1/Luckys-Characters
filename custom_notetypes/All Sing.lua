local DadSingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local DadSingDir = 1

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'All Sing' then
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