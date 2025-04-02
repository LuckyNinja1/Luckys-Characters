function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'doki/NOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'doki/noteSplashes');
		end
		
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Note Skin' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'doki/NOTE_assets'); --Change texture
		end
	end
	
	if not lowQuality then
		makeAnimatedLuaSprite('doorOpen', 'DoorOpen', -25, 320); -- from that door on Hard comes up Matt with Tom
		addAnimationByPrefix('doorOpen', 'open', 'Door Opening', 12, false)
		setScrollFactor('doorOpen', 1, 1);
		setProperty('doorOpen.alpha', 0);
		scaleObject('doorOpen', 1.525, 1.525);
		addLuaSprite('doorOpen', false);
		
		makeAnimatedLuaSprite('matt', 'bg chars/Matt', 30, 245); -- matt !!
		addAnimationByPrefix('matt', 'walk', 'MattWalking', 24, true)
		addAnimationByPrefix('matt', 'idle', 'MattSnappingFinger', 24, false)
		addAnimationByPrefix('matt', 'idol', 'MattPISSED', 24, false)
		addAnimationByPrefix('matt', 'reaction-eduardo', 'MattReeaction', 24, false)
		addAnimationByPrefix('matt', 'reaction-tord', 'MattReactionTord', 24, false)
		addAnimationByPrefix('matt', 'lookin', 'MattHarpoonBit', 24, false)
		addAnimationByPrefix('matt', 'lookidle', 'MattHarpoonIdle', 24, true)
		setScrollFactor('matt', 1, 1);
		setProperty('matt.alpha', 0);
		scaleObject('matt', 1.5, 1.5);
		addLuaSprite('matt', false); -- matt
		
		makeAnimatedLuaSprite('tom', 'bg chars/TomEND', 650, 310); -- tom !!
		addAnimationByPrefix('tom', 'walk', 'Tom Running In', 24, false)
		addAnimationByPrefix('tom', 'harp', 'TomHarpoonLine', 24, false)
		addAnimationByPrefix('tom', 'harpidle', 'TomHarpoonIdle', 24, true)
		setScrollFactor('tom', 1, 1);
		setProperty('tom.alpha', 0);
		scaleObject('tom', 1.5, 1.5);
		addLuaSprite('tom', true); --tom
		
		makeAnimatedLuaSprite('tord2', 'TordFallin', 70, -300); -- this red mf fallin
		addAnimationByPrefix('tord2', 'idle', 'TordFlailing', 24, true)
		setScrollFactor('tord2', 0.9, 0.9);
		setProperty('tord2.alpha', 0);
		scaleObject('tord2', 1.6, 1.6);
		setObjectOrder('tord2', getObjectOrder('houses') - 1)
		addLuaSprite('tord2', false);
	end
	
	makeAnimatedLuaSprite('tordbot', 'TordBot', -300, 85); -- this red mf
	addAnimationByPrefix('tordbot', 'idle', 'TordBot0', 24, true)
	addAnimationByPrefix('tordbot', 'explode', 'TordBotBlowingUp', 24, false)
	addAnimationByIndices('tordbot', 'blowidle', 'TordBotBlowingUp', '1, 2', 24)
	setScrollFactor('tordbot', 0.9, 0.9);
	scaleObject('tordbot', 1.5, 1.5);
	setObjectOrder('tordbot', getObjectOrder('houses') - 1)
	addLuaSprite('tordbot', false);

	makeLuaSprite('cock', 'CockPitUpClose', -30, 00);
	setScrollFactor('cock', 0, 0);
	scaleObject('cock', 0.6, 0.6);
	setProperty('cock.alpha', 0);
	addLuaSprite('cock', true);
end

function onCreatePost()
	for i = 0, getProperty('playerStrums.length')-1 do
		setPropertyFromGroup('playerStrums', i, 'texture', 'doki/NOTE_assets');
	end

	makeAnimatedLuaSprite('eddI', 'icons/icon-edd', getProperty('iconP1.x')+50, getProperty('iconP1.y')-30)
	addAnimationByPrefix('eddI', 'normal', 'Normal Icon', 24, true)
	addAnimationByPrefix('eddI', 'lose', 'Lose Icon', 24, true)
	objectPlayAnimation('eddI', 'normal', true)
	scaleObject('eddI', 0.7, 0.7);
	setObjectCamera('eddI', 'hud')
	addLuaSprite('eddI', true)
	setObjectOrder('eddI', getObjectOrder('iconP1') + 1)
	setProperty('eddI.flipX', true)
	setProperty('eddI.visible', false)
end

function onStepHit()
	if curStep == 80 then -- matt coming up
		objectPlayAnimation('doorOpen', 'open', true)
		setProperty('doorOpen.alpha', 1);
		runTimer('doorGoesInvis', 1, 1)
		setProperty('matt.alpha', 1);
		doTweenX('MattTweenX', 'matt', -580, 1.9);
	end
	
	if curStep == 403 then
		objectPlayAnimation('matt', 'reaction-eduardo', true);
		setProperty('matt.x', -606);
	end
	
	if curStep == 416 then
		setProperty('eddI.visible', true)
	end
	
	if curStep == 1440 then -- tordbot comnin
		doTweenAlpha('hudFunne', 'camHUD', 0, 0.2, 'linear')
		objectPlayAnimation('matt', 'reaction-tord', true);
		setProperty('cameraSpeed', 0.275)
		doTweenY('TordbotTweenY', 'tordbot', -685, 3.3);
	end
	
	if curStep == 1452 then -- tordbot comnin
		setProperty('tom.alpha', 1);
		setProperty('eddI.visible', false)
		objectPlayAnimation('tom', 'walk', true);
	end

	if curStep == 1496 then -- tordbot comnin
		doTweenZoom('FunnyZoomin', 'camGame', 0.9, 1, 'cubeOut');
	end
	if curStep == 1498 then -- into tordbot intro
		doTweenAlpha('hudFunne', 'camHUD', 1, 1, 'linear')
		setProperty('cameraSpeed', 1);
		setProperty('cock.alpha', 1);
		doTweenX('cockScaleX', 'cock.scale', 2, 1,'cubeOut')
		doTweenX('cockScaleY', 'cock.scale', 2, 1,'cubeOut')
		doTweenAlpha('cockTweenalfa', 'cock', 0, 1,'cubeOut');
		setProperty('matt.alpha', 0);
		setProperty('tom.alpha', 0);
	end
	
	if curStep == 1502 then
		setProperty('tordbot.alpha', 0);
	end
	
	if curStep == 2180 then
		setProperty('tordbot.x', -950); -- animation offset
		setProperty('tordbot.y', -980); -- animation offset
	end
	
	if curStep == 2164 then -- offsets reason of cuz 'change character' event changing it
		doTweenAlpha('hudFunne', 'camHUD', 0, 0.2, 'linear')
	end
	if curStep == 2184 then -- camera getin out of tordbot
		setProperty('tordbot.alpha', 1);
		objectPlayAnimation('tordbot', 'blowidle', true)
		doTweenX('tordbotShakeX', 'tordbot', -990, 0.15);
		doTweenZoom('FunnyZoomin', 'camGame', 0.6, 0.3);
		setProperty('defaultCamZoom', 0.6);
		setProperty('cameraSpeed', 0.5);
		setProperty('cock.alpha', 1);
		doTweenAlpha('cockTweenalfa', 'cock', 0, 0.3);
		setProperty('matt.alpha', 1);
		setProperty('tom.alpha', 1);
		setProperty('tom.x', 320); --offset
		setProperty('tom.y', 449); --offset
		scaleObject('tom', 1, 1)
		setProperty('matt.x', -600); --offset
		setProperty('matt.y', 275); --offset
		objectPlayAnimation('matt', 'lookidle', true)
		objectPlayAnimation('tom', 'harpidle', true)
	end
	
	if curStep == 2200 then -- KABOOOM
		runTimer('tordbotExploded', 0.7, 1)
		objectPlayAnimation('tordbot', 'explode', true)
		setProperty('cameraSpeed', 0.2);
		setProperty('tord2.alpha', 1);
		doTweenY('tordFlyinUpTweenY', 'tord2', -675, 0.85, 'linear');
	end
	
	if curStep == 2250 then
		setProperty('matt.x', -667); --offset
		objectPlayAnimation('matt', 'lookin', true)
	end

	
	if curStep == 2247 then
		objectPlayAnimation('tom', 'harp', true)
	end
	
end

function onBeatHit()
	if curBeat % 2 == 0 and curStep > 103 and curStep < 403 then
		objectPlayAnimation('matt', 'idle', true);
	end

	if curBeat % 2 == 0 and curStep > 414 and curStep < 1440 then
		objectPlayAnimation('matt', 'idol', true);
		setProperty('matt.x', -670); -- offset
	end
end

function onUpdatePost()
	setProperty('eddI.x', getProperty('iconP1.x')+50)
	setProperty('eddI.angle', getProperty('iconP1.angle'))
	setProperty('eddI.y', getProperty('iconP1.y')-30)
	setProperty('eddI.scale.x', getProperty('iconP1.scale.x')-0.3)
	setProperty('eddI.scale.y', getProperty('iconP1.scale.y')-0.3)
	
	if getHealth() <= 0.4 then
		objectPlayAnimation('eddI', 'lose', true)
	else
		objectPlayAnimation('eddI', 'normal', true)
	end 
end

function onTweenCompleted(tag)
	if tag == 'MattTweenX' then
		setProperty('matt.x', -670); -- offset
		objectPlayAnimation('matt', 'idle', true);
	end
	if tag == 'tordbotShakeX' and curStep < 2201 then
		doTweenX('tordbotShakinX', 'tordbot', -930, 0.15);
	end
	if tag == 'tordbotShakinX' and curStep < 2201 then
		doTweenX('tordbotShakeX', 'tordbot', -990, 0.15);
	end
	if tag == 'tordFlyinUpTweenY' then
		doTweenY('tordFallinAgainTweenY', 'tord2', 400, 1.5, 'linear');
	end
	if tag == 'tordFallinAgainTweenY' then
		removeLuaSprite('tord2');  -- optimization
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'doorGoesInvis' then
		setProperty('doorOpen.alpha', 0);
	end
	if tag == 'tordbotExploded' then
		removeLuaSprite('tordbot'); --optimization
	end
end