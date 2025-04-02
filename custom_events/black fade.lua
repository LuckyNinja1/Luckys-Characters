function onCreate()
	makeLuaSprite('image', 'blinds', -2000, -1000);
	setScrollFactor('image', 1, 1);
	scaleObject('image', 10, 10);
	addLuaSprite('image', false);
	setObjectOrder('image', getObjectOrder('boyfriendGroup') + 1)
	setProperty('image.alpha', 0);
end

function onEvent(name, value1, value2)
	if name == 'black fade' then
		doTweenAlpha('black', 'image', value1, value2, 'linear');
	end
end