local pixelPos = -800
local pixelWidth = 6
local isWell = false

function onCreate()
	precacheImage('SkyBox') --caching stuffs
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
	
	--eddsworld!!
	makeLuaSprite('sky', 'SkyBox', -1090, -800);
	setScrollFactor('sky', 0.1, 0.5);
	
	makeLuaSprite('cloud', 'Clouds', -1890, -500);
	setScrollFactor('cloud', 0.1, 0.3);
	setProperty('cloud.velocity.x', math.random(5, 15));
	
	makeLuaSprite('houses', 'HousesAndFloor', -1100, -600);
	setScrollFactor('houses', 1, 1);
	
	if not lowQuality then
		makeLuaSprite('city', 'SecondParalax', -590, -500);
		setScrollFactor('city', 0.65, 0.65);
		scaleObject('city', 0.8, 0.8);
		
		makeLuaSprite('car', 'Car', 1050, -600);
		setScrollFactor('car', 1.15, 1.15);
		
		makeAnimatedLuaSprite('john', 'John', -915, 205); -- john
		addAnimationByPrefix('john', 'idle', 'JohnIdle', 24, false)
		setScrollFactor('john', 1, 1);
		setProperty('john.alpha', 0);
		scaleObject('john', 0.9, 0.9);
		
		makeAnimatedLuaSprite('mark', 'Mark', -760, 245); -- mark
		addAnimationByPrefix('mark', 'idle', 'MarkIdle', 24, false)
		setScrollFactor('mark', 1, 1);
		setProperty('mark.alpha', 0);
		scaleObject('mark', 0.8, 0.8);
	end
	
	makeLuaSprite('fence', 'Fence', -1090, -600);
	setScrollFactor('fence', 1, 1);
	
	makeLuaSprite('cock-pit', 'TordBG', 0, -650);
	scaleObject('cock-pit', 0.9, 0.9);
	setScrollFactor('cock-pit', 1, 1);
	setProperty('cock-pit.alpha', 0);
	addLuaSprite('cock-pit', false);
	
	--doki stuff
	makeLuaSprite('closet', 'doki/clubroom/DDLCfarbg', -2300, -420);
	scaleObject('closet', 1.6, 1.6);
	setScrollFactor('closet', 0.9, 0.9);
	
	makeLuaSprite('clubroom', 'doki/clubroom/DDLCbg', -2300, -420);
	scaleObject('clubroom', 1.6, 1.6);
	setScrollFactor('clubroom', 1, 0.9);
	
	--pixel
	makeLuaSprite('sky-pixel', 'doki/pixel/weebSky', pixelPos+600, 0);
	scaleObject('sky-pixel', 6, 6);
	setScrollFactor('sky-pixel', 0.6, 0.9);
	setProperty('sky-pixel.antialiasing', false)
	setProperty('sky-pixel.alpha', 0)
	
	makeLuaSprite('bgSchool', 'doki/pixel/weebSchool', pixelPos+300, 0);
	scaleObject('bgSchool', pixelWidth, pixelWidth);
	setScrollFactor('bgSchool', 0.6, 0.9);
	setProperty('bgSchool.antialiasing', false)
	setProperty('bgSchool.alpha', 0)
	
	makeLuaSprite('bgStreet', 'doki/pixel/weebStreet', pixelPos, 0);
	scaleObject('bgStreet', pixelWidth, pixelWidth);
	setScrollFactor('bgStreet', 0.95, 0.95);
	setProperty('bgStreet.antialiasing', false)
	setProperty('bgStreet.alpha', 0)
	
	makeLuaSprite('fgTrees', 'doki/pixel/weebTreesBack', pixelPos+170, 130);
	scaleObject('fgTrees', pixelWidth * 0.8, pixelWidth * 0.8);
	setScrollFactor('fgTrees', 0.9, 0.9);
	setProperty('fgTrees.antialiasing', false)
	setProperty('fgTrees.alpha', 0)
	
	makeAnimatedLuaSprite('bgTrees', 'doki/pixel/weebTrees', pixelPos-400, -900, 'packer');
	addAnimationByPrefix('bgTrees', 'treeLoop', 'trees_', 12, true)
	scaleObject('bgTrees', pixelWidth, pixelWidth);
	setScrollFactor('bgTrees', 0.85, 0.85);
	setProperty('bgTrees.antialiasing', false)
	setProperty('bgTrees.alpha', 0)
	
	makeLuaSprite('space', 'doki/bigmonika/Sky', -2300, -420);
	scaleObject('space', 1.6, 1.6);
	setScrollFactor('space', 1, 0.9);
	setProperty('space.alpha', 1);
	
	makeLuaSprite('ruinedBG', 'doki/ruinedclub/BG', -2300, -420);
	scaleObject('ruinedBG', 1.6, 1.6);
	setScrollFactor('ruinedBG', 1, 0.9);
	setProperty('ruinedBG.alpha', 1);
	
	makeLuaSprite('monikaRoom', 'doki/bigmonika/BG', -1200, -400);
	scaleObject('monikaRoom', 1.5, 1.5);
	setScrollFactor('monikaRoom', 0.4, 0.6);
	setProperty('monikaRoom.alpha', 0);
	
	makeLuaSprite('desk', 'doki/bigmonika/FG', -1400, -45);
	setScrollFactor('desk', 1, 1);
	setProperty('desk.alpha', 0);
	
	makeLuaSprite('closet2', 'doki/ClosetBG', -1780, -200);
	scaleObject('closet2', 1.3, 1.3);
	setScrollFactor('closet2', 1, 1);
	setProperty('closet2.alpha', 0);
	
	makeLuaSprite('yuriInsaneBG', 'doki/yuri', -1800, -950);
	scaleObject('yuriInsaneBG', 2.2, 2.2);
	setScrollFactor('yuriInsaneBG', 1, 1);
	setProperty('yuriInsaneBG.alpha', 0);
	
	makeLuaSprite('eduardoSlide', 'SlideBG', -1500, 0);
	scaleObject('eduardoSlide', 1.7, 1.7)
	if songName == 'Four-Way-Fracture-Old' then
		setProperty('eduardoSlide.x', -1650)
	end
	setProperty('eduardoSlide.alpha', 0);
	setProperty('eduardoSlide.flipX', true);
	
	if not lowQuality then
		makeAnimatedLuaSprite('mattBG', 'bg chars/Matt', 975, 150); 
		addAnimationByPrefix('mattBG', 'idle', 'MattSnappingFinger', 24, false)
		addAnimationByPrefix('mattBG', 'pissed', 'MattPISSED', 24, false)
		setProperty('mattBG.flipX', true)
		scaleObject('mattBG', 1.75, 1.75);
		setScrollFactor('mattBG', 0.9, 0.9)
		setProperty('mattBG.alpha', 0);
		
		makeAnimatedLuaSprite('eddBG', 'bg chars/EddBG', 1225, 195); 
		addAnimationByPrefix('eddBG', 'idle', 'Edd Idle', 24, false)
		scaleObject('eddBG', 0.8, 0.8);
		setScrollFactor('eddBG', 0.9, 0.9);
		setProperty('eddBG.alpha', 0)
		
		makeAnimatedLuaSprite('tomBG', 'bg chars/Tom', 1525, 225); 
		addAnimationByPrefix('tomBG', 'idle', 'TomIdle', 24, false)
		addAnimationByPrefix('tomBG', 'idleLook', 'TomIdol', 24, false)
		scaleObject('tomBG', 1.75, 1.75);
		setScrollFactor('tomBG', 0.9, 0.9);
		setProperty('tomBG.alpha', 0);
		
		makeAnimatedLuaSprite('tordBG', 'bg chars/TordBG', 375, 195); 
		addAnimationByIndices('tordBG', 'idle', 'TordBG Dance', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', 24)
		setProperty('tordBG.flipX', true)
		scaleObject('tordBG', 0.8, 0.8);
		setScrollFactor('tordBG', 1, 1);
		setProperty('tordBG.alpha', 0);
		
		makeAnimatedLuaSprite('sayoBG', 'doki/silhouette/silhouette_sayo', -875, 175); 
		addAnimationByIndices('sayoBG', 'danceLeft', 'Sayo Idle nrw test', '25,0,1,2,3,4,5,6,7,8,9,10,11,12', 24)
		addAnimationByIndices('sayoBG', 'danceRight', 'Sayo Idle nrw test', '13,14,15,16,17,18,19,20,21,22,23,24', 24)
		scaleObject('sayoBG', 0.8, 0.8);
		setScrollFactor('sayoBG', 0.9, 0.9);
		setProperty('sayoBG.alpha', 0);
		
		makeAnimatedLuaSprite('natBG', 'doki/silhouette/silhouette_nat', -525, 225); 
		addAnimationByPrefix('natBG', 'idle', 'Nat Idle', 24, false)
		scaleObject('natBG', 0.8, 0.8);
		setScrollFactor('natBG', 0.9, 0.9);
		setProperty('natBG.alpha', 0)
	end
	
	makeAnimatedLuaSprite('thing', 'pixelthing', -680, -250); 
	addAnimationByPrefix('thing', 'idle', 'pixelthing', 24, true)
	scaleObject('thing', 1.8, 2.1);
	
	addLuaSprite('sky', false); --bg
	addLuaSprite('cloud', false);
	addLuaSprite('city', false);
	addLuaSprite('houses', false);
	addLuaSprite('mark', false); --dumbasses
	addLuaSprite('john', false);	
	addLuaSprite('fence', false); --fence lol	
	addLuaSprite('car', true);
	
	addLuaSprite('closet', false);
	addLuaSprite('clubroom', false);
	addLuaSprite('sky-pixel', false);
	addLuaSprite('bgSchool', false);
	addLuaSprite('bgStreet', false);
	addLuaSprite('fgTrees', false);
	addLuaSprite('bgTrees', false);
end

function onCreatePost()
	addLuaSprite('space', false);
	addLuaSprite('ruinedBG', false);
	addLuaSprite('monikaRoom', false);
	addLuaSprite('desk', false);
	addLuaSprite('closet2', false);
	addLuaSprite('yuriInsaneBG', false);
	addLuaSprite('eduardoSlide', false)
	addLuaSprite('mattBG', false)
	addLuaSprite('eddBG', false)
	addLuaSprite('tomBG', false)
	addLuaSprite('tordBG', false)
	addLuaSprite('sayoBG', false)
	addLuaSprite('natBG', false)
	addLuaSprite('thing', false)
	
	if songName == 'omnipresent' then
		setProperty('clubroom.alpha', 0);
		setProperty('closet.alpha', 0);
		setProperty('space.alpha', 0);
		setProperty('monikaRoom.alpha', 0);
		setProperty('desk.alpha', 0);
		setProperty('cock-pit.alpha', 0);
		setProperty('closet2.alpha', 0);
		setProperty('ruinedBG.alpha', 0);
		setProperty('yuriInsaneBG.alpha', 0);
		setProperty('sky-pixel.alpha', 0)
		setProperty('bgSchool.alpha', 0)
		setProperty('bgStreet.alpha', 0)
		setProperty('fgTrees.alpha', 0)
		setProperty('bgTrees.alpha', 0)
		setProperty('thing.alpha', 0);
		housePoz()
	elseif songName == 'Roadkill' then
		if not lowQuality then
			setProperty('city.alpha', 1);
			setProperty('car.alpha', 1);
	
			setProperty('sayoBG.alpha', 0);
			setProperty('natBG.alpha', 0);
			setProperty('mattBG.alpha', 0);
			setProperty('eddBG.alpha', 0);
			setProperty('tomBG.alpha', 0);
			setProperty('tordBG.alpha', 0);
			setProperty('john.alpha', 0);
			setProperty('mark.alpha', 0);
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
		setProperty('sky-pixel.alpha', 0)
		setProperty('bgSchool.alpha', 0)
		setProperty('bgStreet.alpha', 0)
		setProperty('fgTrees.alpha', 0)
		setProperty('bgTrees.alpha', 0)
		showStopPoz()
	end
end

function onBeatHit()
if curBeat % 2 == 0 then
	if songName == 'Roadkill' then
		objectPlayAnimation('john', 'idle', true);
		objectPlayAnimation('mark', 'idle', true);
	else
		if isWell then
			objectPlayAnimation('mattBG', 'pissed', true);
			objectPlayAnimation('tomBG', 'idleLook', true);
			objectPlayAnimation('john', 'idle', true);
			objectPlayAnimation('mark', 'idle', true);
		else
			objectPlayAnimation('mattBG', 'idle', true);
			objectPlayAnimation('tomBG', 'idle', true);
		end
		objectPlayAnimation('tordBG', 'idle', true);
		objectPlayAnimation('eddBG', 'idle', true);
		objectPlayAnimation('natBG', 'idle', true);
	end
end
	
	if curBeat % 1 == 0 then
		bgDance()
	end
end

local danced = false
function bgDance()
	if danced then
		objectPlayAnimation('sayoBG', 'danceRight', true);
		danced = false
	else
		objectPlayAnimation('sayoBG', 'danceLeft', true);
		danced = true
	end
end

function onEvent(name, value1, value2)
    if name == "Stage Type" then
	if songName == 'Roadkill' then
		if value1 == 'eduardo' then
			setProperty('john.x', -1375)
			setProperty('mark.x', -1220)
			setObjectOrder('dadGroup', getObjectOrder('fence') - 1)
			setObjectOrder('john', getObjectOrder('dadGroup') - 1)
			setObjectOrder('mark', getObjectOrder('john') - 1)
			setProperty('john.alpha', 1);
			setProperty('mark.alpha', 1);
		elseif value1 == 'tord' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 0);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 1);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
			setProperty('fence.alpha', 0)
		elseif value1 == 'monika' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 1);
			setProperty('monikaRoom.alpha', 1);
			setProperty('desk.alpha', 1);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
			setProperty('fence.alpha', 0)
		elseif value1 == 'yuri' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 1);
			setProperty('monikaRoom.alpha', 1);
			setProperty('desk.alpha', 1);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 1);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
			setProperty('fence.alpha', 0)
		elseif value1 == 'eddhouse' then
			setProperty('sky.alpha', 1);
			setProperty('cloud.alpha', 1);
			setProperty('houses.alpha', 1);
			if not lowQuality then
				setProperty('city.alpha', 1);
				setProperty('car.alpha', 1);
				
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('fence.alpha', 1)
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 0);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 0);
			setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup') - 1)
		end
	else
		if value1 == 'dokiclubroom' then
			setProperty('sky.alpha', 1);
			setProperty('cloud.alpha', 1);
			setProperty('houses.alpha', 1);
			if not lowQuality then
				setProperty('city.alpha', 1);
				setProperty('car.alpha', 1);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
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
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
			flipStage(false)
		elseif value1 == 'ruinedclub' then
			setProperty('sky.alpha', 1);
			setProperty('cloud.alpha', 1);
			setProperty('houses.alpha', 1);
			if not lowQuality then
				setProperty('city.alpha', 1);
				setProperty('car.alpha', 1);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 1);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 1);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
			flipStage(false)
		elseif value1 == 'ruinedclub-flip' then
			setProperty('sky.alpha', 1);
			setProperty('cloud.alpha', 1);
			setProperty('houses.alpha', 1);
			if not lowQuality then
				setProperty('city.alpha', 1);
				setProperty('car.alpha', 1);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 1);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 1);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
			flipStage(true)
		elseif value1 == 'dokiclub-flip' then
			setProperty('sky.alpha', 1);
			setProperty('cloud.alpha', 1);
			setProperty('houses.alpha', 1);
			if not lowQuality then
				setProperty('city.alpha', 1);
				setProperty('car.alpha', 1);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
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
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			flipStage(true)
		elseif value1 == 'closet' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 0);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 1);
			setProperty('closet2.alpha', 1);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
		elseif value1 == 'monika' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 1);
			setProperty('monikaRoom.alpha', 1);
			setProperty('desk.alpha', 1);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
		elseif value1 == 'yuri' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 1);
				setProperty('natBG.alpha', 1);
				setProperty('mattBG.alpha', 1);
				setProperty('eddBG.alpha', 1);
				setProperty('tomBG.alpha', 1);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 0);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 1);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 0);
		elseif value1 == 'eduardo' then
			setProperty('sky.alpha', 1);
			setProperty('cloud.alpha', 1);
			setProperty('houses.alpha', 1);
			if not lowQuality then
				setProperty('city.alpha', 1);
				setProperty('car.alpha', 1);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 1);
				setProperty('mattBG.flipX', false)
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 1);
				setProperty('tordBG.alpha', 1);
				setProperty('john.alpha', 1);
				setProperty('mark.alpha', 1);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 0);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 0);
			isWell = true
			eduardoStage(true)
		elseif value1 == 'monika-eduardo' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('mattBG.flipX', false)
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 1);
			setProperty('monikaRoom.alpha', 1);
			setProperty('desk.alpha', 1);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 1);
			
			setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup') - 1)
			setObjectOrder('gfGroup', getObjectOrder('dadGroup') - 1)
			setObjectOrder('john', getObjectOrder('gfGroup') - 1)
			setObjectOrder('mark', getObjectOrder('john') - 1)
		elseif value1 == 'pixel-stage' then
			setProperty('sky.alpha', 0);
			setProperty('cloud.alpha', 0);
			setProperty('houses.alpha', 0);
			if not lowQuality then
				setProperty('city.alpha', 0);
				setProperty('car.alpha', 0);
				
				setProperty('sayoBG.alpha', 0);
				setProperty('natBG.alpha', 0);
				setProperty('mattBG.alpha', 0);
				setProperty('eddBG.alpha', 0);
				setProperty('tomBG.alpha', 0);
				setProperty('tordBG.alpha', 0);
				setProperty('john.alpha', 0);
				setProperty('mark.alpha', 0);
			end
			setProperty('fence.alpha', 0);
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 0);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 1)
			setProperty('bgSchool.alpha', 1)
			setProperty('bgStreet.alpha', 1)
			setProperty('fgTrees.alpha', 1)
			setProperty('bgTrees.alpha', 1)
			setProperty('thing.alpha', 0);
		elseif value1 == 'eddhouse' then
			setProperty('clubroom.alpha', 0);
			setProperty('closet.alpha', 0);
			setProperty('space.alpha', 0);
			setProperty('monikaRoom.alpha', 0);
			setProperty('desk.alpha', 0);
			setProperty('cock-pit.alpha', 0);
			setProperty('closet2.alpha', 0);
			setProperty('ruinedBG.alpha', 0);
			setProperty('yuriInsaneBG.alpha', 0);
			setProperty('sky-pixel.alpha', 0)
			setProperty('bgSchool.alpha', 0)
			setProperty('bgStreet.alpha', 0)
			setProperty('fgTrees.alpha', 0)
			setProperty('bgTrees.alpha', 0)
			setProperty('thing.alpha', 0);
			housePoz()
		end
		end
	end
	
	if name == 'finale' then
		setProperty('eduardoSlide.alpha', 1);
		setObjectOrder('eduardoSlide', getObjectOrder('boyfriendGroup') + 1)
		setObjectOrder('gfGroup', getObjectOrder('eduardoSlide') + 1)
	end
end

function flipStage(flip)
	if flip then
		setProperty('sky.x', -2090)
		setProperty('cloud.x', -2890)
		setProperty('houses.x', -3100)
		if not lowQuality then
			setProperty('city.x', -2300)
			setProperty('car.x', -2950)
		end
		setProperty('fence.x', -3090)
		setProperty('closet.x', 460)
		setProperty('clubroom.x', 460)
		setProperty('space.x', 460)
		setProperty('ruinedBG.x', 460)
		setProperty('fence.alpha', 1);
	else
		setProperty('sky.x', -1090)
		setProperty('cloud.x', -1890)
		setProperty('houses.x', -1100)
		if not lowQuality then
			setProperty('city.x', -590)
			setProperty('car.x', 1050)
		end
		setProperty('fence.x', -1090)
		setProperty('closet.x', -2300)
		setProperty('clubroom.x', -2300)
		setProperty('space.x', -2300)
		setProperty('ruinedBG.x', -2300)
		setProperty('fence.alpha', 1);
	end
end

function eduardoStage(layers)
	setProperty('sky.x', -1790)
	setProperty('cloud.x', -2590)
	setProperty('houses.x', -1790)
	if not lowQuality then
		setProperty('city.x', -1290)
		setProperty('car.x', -1790)
		
		setProperty('mattBG.x', -140)
		setProperty('tomBG.x', 790)
		setProperty('mattBG.y', 195)
		setProperty('tomBG.y', 205)
		setScrollFactor('mattBG', 1, 1);
		setScrollFactor('tomBG', 1, 1);
	end
	setProperty('fence.x', -1790)
	
	if layers then
		setObjectOrder('dadGroup', getObjectOrder('fence') - 1)
		setObjectOrder('john', getObjectOrder('dadGroup') - 1)
		setObjectOrder('mark', getObjectOrder('john') - 1)
	end
end

function housePoz()
	setProperty('sky.x', -1790)
	setProperty('cloud.x', -2590)
	setProperty('houses.x', -2290)
	if not lowQuality then
		setProperty('city.x', -1490)
		setProperty('car.x', -2290)
	end
	setProperty('fence.x', -2290)
end

function showStopPoz()
	setProperty('cock-pit.x', -1840)
	setProperty('closet2.x', 450)
	setProperty('sky.x', -2090)
	setProperty('cloud.x', -2890)
	setProperty('houses.x', -2400)
	if not lowQuality then
		setProperty('city.x', -1400)
		setProperty('car.x', -2950)
	end
	setProperty('fence.x', -2390)
	setProperty('closet.x', 460)
	setProperty('clubroom.x', 460)
	setProperty('space.x', 460)
	setProperty('ruinedBG.x', 460)
	setProperty('fence.alpha', 1);
end