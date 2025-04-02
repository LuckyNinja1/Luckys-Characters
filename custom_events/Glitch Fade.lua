function onCreate()	
	if flashingLights then
		precacheImage('doki/clubroom/staticshock')
		makeAnimatedLuaSprite('fx', 'doki/clubroom/staticshock', 0, 0)
		addAnimationByIndices('fx', 'idle', 'hueh', '0,1,2,3,4,5,6,7,0,1', 16)
		scaleObject('fx', 3, 3)
		setObjectCamera('fx', 'camHud')
		setObjectOrder('fx', getObjectOrder('iconP2') + 1);
		objectPlayAnimation('fx', 'idle', true)
		setProperty('fx.alpha', 0)
	end
end

function onSongStart()
	if flashingLights then
		addLuaSprite('fx', true)
	end
end

function onEvent(name, value1, value2)
    if name == "Glitch Fade" and flashingLights then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('fx.alpha', targetAlpha);
		else
			doTweenAlpha('glitchFadeTween', 'fx', targetAlpha, duration, 'linear');
		end
	end
end