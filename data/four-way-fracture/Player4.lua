local startX = -1075
local startY = 300
local didIdle = false
local specialAnim = false

function onCreate()	
	makeAnimatedLuaSprite('P4', 'characters/SenpaiNonPixel_Assets', startX, startY); 
	addAnimationByPrefix('P4', 'idle', 'Senpai Returns Angy', 24, false)
	addAnimationByPrefix('P4', 'singDOWN', 'Senpai Returns Down Angy', 24, false)
	addAnimationByPrefix('P4', 'singUP', 'Senpai Returns Up Angy', 24, false)
	addAnimationByPrefix('P4', 'singLEFT', 'Senpai Returns Left Angy', 24, false)
	addAnimationByPrefix('P4', 'singRIGHT', 'Senpai Returns Right Angy', 24, false)
	setProperty('P4.visible', false)
	addLuaSprite('P4', false)
	setObjectOrder('P4', getObjectOrder('boyfriendGroup') - 1)
end

function onCountdownTick(counter)
    if (counter == 0 or counter == 2 or counter == 4) then
		NewPlayerAnim('idle', true)
    end
end

local DadSingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local DadSingDir = 1
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Duet Note' then
		DadSingDir = direction
		NewPlayerAnim(DadSingAnims[DadSingDir+1], true)
	elseif noteType == 'All Sing' then
		DadSingDir = direction
		NewPlayerAnim(DadSingAnims[DadSingDir+1], true)
	end
end

function onUpdate()
	if specialAnim then
		if getProperty('P4.animation.curAnim.finished') then
			didIdle = true
			NewPlayerAnim('idle', true)
		end
	end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		if not specialAnim then
			if didIdle then
				didIdle = false
			else
				NewPlayerAnim('idle', true)
			end
        end
	end
end

function NewPlayerAnim(animName, forced)
	if animName == 'idle' then
		setProperty('P4.x', startX);
		setProperty('P4.y', startY);
		specialAnim = false
	elseif animName == 'singDOWN' then
		setProperty('P4.x', startX+3);
		setProperty('P4.y', startY+60);
		specialAnim = true
	elseif animName == 'singUP' then
		setProperty('P4.x', startX);
		setProperty('P4.y', startY-30);
		specialAnim = true
	elseif animName == 'singRIGHT' then
		setProperty('P4.x', startX+10);
		setProperty('P4.y', startY-5);
		specialAnim = true
	elseif animName == 'singLEFT' then
		setProperty('P4.x', startX-37);
		setProperty('P4.y', startY-3);
		specialAnim = true
	end
	objectPlayAnimation('P4', animName, forced);
end

function onCreatePost()
	makeAnimatedLuaSprite('p4I', 'icons/icon-senpai', getProperty('iconP1.x')+100, getProperty('iconP1.y')+30)
	addAnimationByPrefix('p4I', 'normal', 'Normal Icon', 24, true)
	addAnimationByPrefix('p4I', 'lose', 'Lose Icon', 24, true)
	objectPlayAnimation('p4I', 'normal', true)
	scaleObject('p4I', 0.7, 0.7);
	setObjectCamera('p4I', 'hud')
	addLuaSprite('p4I', true)
	setObjectOrder('p4I', getObjectOrder('iconP1') + 1)
	setProperty('p4I.flipX', true)
	setProperty('p4I.visible', false)
end

function onEvent(name, value1, value2)
	if name == 'finale' then
		setProperty('P4.visible', true)
		setProperty('p4I.visible', true)
		setObjectOrder('P4', getObjectOrder('eduardoSlide') + 1)
	end
	if name == 'Cinematics' then
		if getProperty('p4I.visible') then
			doTweenAlpha('p4I', 'p4I', 0, 0.15)
		end
	end
end

function onUpdatePost()
	setProperty('p4I.x', getProperty('iconP1.x')+100)
	setProperty('p4I.angle', getProperty('iconP1.angle'))
	setProperty('p4I.y', getProperty('iconP1.y')+30)
	setProperty('p4I.scale.x', getProperty('iconP1.scale.x')-0.3)
	setProperty('p4I.scale.y', getProperty('iconP1.scale.y')-0.3)
	
	if getHealth() <= 0.4 then
		objectPlayAnimation('p4I', 'lose', true)
	else
		objectPlayAnimation('p4I', 'normal', true)
	end 
end