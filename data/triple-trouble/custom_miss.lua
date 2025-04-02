local SingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local missed = false
local hasMisses = false

function onCreate()
	hasMisses = getProperty('boyfriend.hasMissAnimations')
end

function missNote(note)
	characterPlayAnim('boyfriend', SingAnims[note+1], true)
	setProperty('boyfriend.specialAnim', true);
	if not missed then
		setProperty('boyfriend.color', 0xCFAFFF);
		missed = true
	end
end

function onUpdate(elapsed)
	if missed and getProperty('boyfriend.animation.curAnim.finished') then
		if getProperty('boyfriend.animation.curAnim.endsWith') == '-loop' then
			if missed and getProperty('boyfriend.animation.curAnim.finished') then
				missed = false
			end
		else
			missed = false
		end
	end
	
	if not missed then
		setProperty('boyfriend.color', 0xFFFFFF);
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if not hasMisses then
		if missed then
			setProperty('boyfriend.color', 0xFFFFFF);
			missed = false
		end
	end
end 

function onEvent(n, v1, v2)
	if n == 'Change Character' then
		hasMisses = getProperty('boyfriend.hasMissAnimations')
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if not hasMisses then
		missNote(noteData)
	end
end

function noteMissPress(direction)
	if not hasMisses then
		missNote(direction)
	end
end