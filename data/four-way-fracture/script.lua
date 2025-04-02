function onCreate()	
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' then 
         setPropertyFromGroup('unspawnNotes', i, 'texture', 'doki/NOTE_assets'); --Change texture
        end
    end
	
	setProperty('sky.alpha', 1);
	setProperty('cloud.alpha', 1);
	setProperty('houses.alpha', 1);
	if not lowQuality then
		setProperty('city.alpha', 1);
		setProperty('car.alpha', 1);
	end
	setProperty('clubroom.alpha', 1);
	setProperty('closet.alpha', 1);
	setProperty('space.alpha', 0);
	setProperty('monikaRoom.alpha', 0);
	setProperty('desk.alpha', 0);
	setProperty('cock-pit.alpha', 0);
	setProperty('closet2.alpha', 0);
	setProperty('ruinedBG.alpha', 0);
	setProperty('yuriInsaneBG.alpha', 0);
	setProperty('thing.alpha', 1);
	
	setProperty('sayoBG.alpha', 0);
	setProperty('natBG.alpha', 0);
	setProperty('mattBG.alpha', 0);
	setProperty('eddBG.alpha', 0);
	setProperty('tomBG.alpha', 0);

	precacheImage('SkyBox')
	precacheImage('Clouds')
	precacheImage('HousesAndFloor')
	precacheImage('SecondParalax')
	precacheImage('Mark')
	precacheImage('John')
	precacheImage('Mark')
	precacheImage('Fence')
	precacheImage('TordBG')
	precacheImage('doki/clubroom/DDLCfarbg')
	precacheImage('doki/clubroom/DDLCbg')
	precacheImage('doki/pixel/weebSky')
	precacheImage('doki/pixel/weebSchool')
	precacheImage('doki/pixel/weebStreet')
	precacheImage('doki/pixel/weebTreesBack')
	precacheImage('doki/pixel/weebTrees')
	precacheImage('doki/bigmonika/Sky')
	precacheImage('doki/ruinedclub/BG')
	precacheImage('doki/bigmonika/BG')
	precacheImage('doki/bigmonika/FG')
	precacheImage('doki/ClosetBG')
	precacheImage('doki/yuri')
	precacheImage('SlideBG')
	precacheImage('bg chars/Matt')
	precacheImage('bg chars/EddBG')
	precacheImage('bg chars/Tom')
	precacheImage('bg chars/TordBG')
	precacheImage('doki/silhouette/silhouette_sayo')
	precacheImage('doki/silhouette/silhouette_nat')
	precacheImage('pixelthing')
	
	addCharacterToList('gf-doki', 'gf')
	addCharacterToList('gf-doki', 'dad')
	addCharacterToList('gf-doki', 'bf')
	addCharacterToList('gf-markov', 'gf')
	addCharacterToList('gf-markov', 'dad')
	addCharacterToList('gf-markov', 'bf')
	addCharacterToList('sayori', 'dad')
	addCharacterToList('sayori', 'bf')
	addCharacterToList('sayori', 'gf')
	addCharacterToList('mattP', 'bf')
	addCharacterToList('mattP', 'dad')
	addCharacterToList('mattP', 'gf')
	addCharacterToList('sadsayo', 'dad')
	addCharacterToList('sadsayo', 'bf')
	addCharacterToList('sadsayo', 'gf')
	addCharacterToList('monika-real', 'dad')
	addCharacterToList('monika-real', 'bf')
	addCharacterToList('monika-real', 'gf')
	addCharacterToList('eddP', 'bf')
	addCharacterToList('eddP', 'dad')
	addCharacterToList('eddP', 'gf')
	addCharacterToList('natsuki-sad', 'dad')
	addCharacterToList('natsuki-sad', 'bf')
	addCharacterToList('natsuki-sad', 'gf')
	addCharacterToList('tom-flip', 'bf')
	addCharacterToList('tom-flip', 'dad')
	addCharacterToList('tom-flip', 'gf')
	addCharacterToList('natsuki-blood', 'dad')
	addCharacterToList('natsuki-blood', 'bf')
	addCharacterToList('natsuki-blood', 'gf')
	addCharacterToList('monika-real-flip', 'dad')
	addCharacterToList('monika-real-flip', 'bf')
	addCharacterToList('monika-real-flip', 'gf')
	addCharacterToList('edd-flip', 'bf')
	addCharacterToList('edd-flip', 'dad')
	addCharacterToList('edd-flip', 'gf')
	addCharacterToList('yuri-crazy', 'dad')
	addCharacterToList('yuri-crazy', 'bf')
	addCharacterToList('yuri-crazy', 'gf')
	addCharacterToList('tordP', 'bf')
	addCharacterToList('tordP', 'dad')
	addCharacterToList('tordP', 'gf')
	addCharacterToList('yuri-closeup', 'dad')
	addCharacterToList('yuri-closeup', 'bf')
	addCharacterToList('yuri-closeup', 'gf')
	addCharacterToList('tord-robot', 'bf')
	addCharacterToList('tord-robot', 'dad')
	addCharacterToList('tord-robot', 'gf')
	addCharacterToList('bigmonika', 'dad')
	addCharacterToList('bigmonika', 'bf')
	addCharacterToList('bigmonika', 'gf')
	addCharacterToList('slide-edd', 'bf')
	addCharacterToList('slide-edd', 'dad')
	addCharacterToList('slide-edd', 'gf')
	addCharacterToList('eduardo', 'dad')
	addCharacterToList('eduardo', 'bf')
	addCharacterToList('eduardo', 'gf')
	addCharacterToList('eddangry', 'bf')
	addCharacterToList('eddangry', 'dad')
	addCharacterToList('eddangry', 'gf')
	addCharacterToList('eddangry-gf', 'gf')
	addCharacterToList('eddangry-gf', 'dad')
	addCharacterToList('eddangry-gf', 'bf')
	addCharacterToList('senpai-hd', 'bf')
	addCharacterToList('senpai-hd', 'dad')
	addCharacterToList('senpai-hd', 'gf')
	addCharacterToList('eduardo-gf', 'gf')
	addCharacterToList('eduardo-gf', 'dad')
	addCharacterToList('eduardo-gf', 'bf')
end

function onCreatePost()
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'doki/NOTE_assets');
	end
	
	makeAnimatedLuaSprite('eduarI', 'icons/icon-eduardo', getProperty('iconP1.x')+50, getProperty('iconP1.y')-30)
	addAnimationByPrefix('eduarI', 'normal', 'Normal Icon', 24, true)
	addAnimationByPrefix('eduarI', 'lose', 'Lose Icon', 24, true)
	objectPlayAnimation('eduarI', 'normal', true)
	scaleObject('eduarI', 0.7, 0.7);
	setObjectCamera('eduarI', 'hud')
	addLuaSprite('eduarI', true)
	setObjectOrder('eduarI', getObjectOrder('iconP1') + 1)
	setProperty('eduarI.flipX', true)
	setProperty('eduarI.visible', false)

	addCharacterToList('gf-doki', 'gf')
	addCharacterToList('gf-doki', 'dad')
	addCharacterToList('gf-doki', 'bf')
	addCharacterToList('gf-markov', 'gf')
	addCharacterToList('gf-markov', 'dad')
	addCharacterToList('gf-markov', 'bf')
	addCharacterToList('sayori', 'dad')
	addCharacterToList('sayori', 'bf')
	addCharacterToList('sayori', 'gf')
	addCharacterToList('mattP', 'bf')
	addCharacterToList('mattP', 'dad')
	addCharacterToList('mattP', 'gf')
	addCharacterToList('sadsayo', 'dad')
	addCharacterToList('sadsayo', 'bf')
	addCharacterToList('sadsayo', 'gf')
	addCharacterToList('monika-real', 'dad')
	addCharacterToList('monika-real', 'bf')
	addCharacterToList('monika-real', 'gf')
	addCharacterToList('eddP', 'bf')
	addCharacterToList('eddP', 'dad')
	addCharacterToList('eddP', 'gf')
	addCharacterToList('natsuki-sad', 'dad')
	addCharacterToList('natsuki-sad', 'bf')
	addCharacterToList('natsuki-sad', 'gf')
	addCharacterToList('tom-flip', 'bf')
	addCharacterToList('tom-flip', 'dad')
	addCharacterToList('tom-flip', 'gf')
	addCharacterToList('natsuki-blood', 'dad')
	addCharacterToList('natsuki-blood', 'bf')
	addCharacterToList('natsuki-blood', 'gf')
	addCharacterToList('monika-real-flip', 'dad')
	addCharacterToList('monika-real-flip', 'bf')
	addCharacterToList('monika-real-flip', 'gf')
	addCharacterToList('edd-flip', 'bf')
	addCharacterToList('edd-flip', 'dad')
	addCharacterToList('edd-flip', 'gf')
	addCharacterToList('yuri-crazy', 'dad')
	addCharacterToList('yuri-crazy', 'bf')
	addCharacterToList('yuri-crazy', 'gf')
	addCharacterToList('tordP', 'bf')
	addCharacterToList('tordP', 'dad')
	addCharacterToList('tordP', 'gf')
	addCharacterToList('yuri-closeup', 'dad')
	addCharacterToList('yuri-closeup', 'bf')
	addCharacterToList('yuri-closeup', 'gf')
	addCharacterToList('tord-robot', 'bf')
	addCharacterToList('tord-robot', 'dad')
	addCharacterToList('tord-robot', 'gf')
	addCharacterToList('bigmonika', 'dad')
	addCharacterToList('bigmonika', 'bf')
	addCharacterToList('bigmonika', 'gf')
	addCharacterToList('slide-edd', 'bf')
	addCharacterToList('slide-edd', 'dad')
	addCharacterToList('slide-edd', 'gf')
	addCharacterToList('eduardo', 'dad')
	addCharacterToList('eduardo', 'bf')
	addCharacterToList('eduardo', 'gf')
	addCharacterToList('eddangry', 'bf')
	addCharacterToList('eddangry', 'dad')
	addCharacterToList('eddangry', 'gf')
	addCharacterToList('eddangry-gf', 'gf')
	addCharacterToList('eddangry-gf', 'dad')
	addCharacterToList('eddangry-gf', 'bf')
	addCharacterToList('senpai-hd', 'bf')
	addCharacterToList('senpai-hd', 'dad')
	addCharacterToList('senpai-hd', 'gf')
	addCharacterToList('eduardo-gf', 'gf')
	addCharacterToList('eduardo-gf', 'dad')
	addCharacterToList('eduardo-gf', 'bf')
end

function onEvent(name, value1, value2)
	if name == 'finale' then
		setProperty('eduarI.visible', true)
	end
	if name == 'Cinematics' then
		if getProperty('eduarI.visible') then
			doTweenAlpha('eduarI', 'eduarI', 0, 0.15)
		end
	end
end

function onUpdatePost()
	setProperty('eduarI.x', getProperty('iconP1.x')+50)
	setProperty('eduarI.angle', getProperty('iconP1.angle'))
	setProperty('eduarI.y', getProperty('iconP1.y')-30)
	setProperty('eduarI.scale.x', getProperty('iconP1.scale.x')-0.3)
	setProperty('eduarI.scale.y', getProperty('iconP1.scale.y')-0.3)
	
	if getHealth() <= 0.4 then
		objectPlayAnimation('eduarI', 'lose', true)
	else
		objectPlayAnimation('eduarI', 'normal', true)
	end 
end