local textXPos = 200
local textYPos = 550
local iconYPos = 550

function onCreate()
	if downscroll then
		textYPos = 25
		iconYPos = 10
	end
	makeAnimatedLuaSprite('icon', 'subtitle icons', textXPos-125, iconYPos); 
	addAnimationByPrefix('icon', 'Sayo', 'Sayo', 24, false)
	addAnimationByPrefix('icon', 'Matt', 'Matt', 24, false)
	addAnimationByPrefix('icon', 'Nat', 'Nat', 24, false)
	addAnimationByPrefix('icon', 'Tom', 'Tom', 24, false)
	addAnimationByPrefix('icon', 'Yuri', 'Yuri', 24, false)
	addAnimationByPrefix('icon', 'Tord', 'Tord', 24, false)
	addAnimationByPrefix('icon', 'Eduardo', 'Eduardo', 24, false)
	addAnimationByPrefix('icon', 'Senpai', 'Senpai', 24, false)
	scaleObject('icon', 1.2, 1.2);
	setProperty('icon.alpha', 0);
		
	makeLuaText("SayoText", "", 900, textXPos, textYPos)
	setTextSize("SayoText", 70)
	setTextColor('SayoText', '95e0fa');
	setTextFont('SayoText', 'Aller_Rg.ttf');
	addLuaText("SayoText")
	
	makeLuaText("MattText", "", 900, textXPos, textYPos)
	setTextSize("MattText", 70)
	setTextColor('MattText', 'bb46cc');
	addLuaText("MattText")
	
	makeLuaText("NatText", "", 900, textXPos, textYPos)
	setTextSize("NatText", 70)
	setTextColor('NatText', 'fc95d3');
	setTextFont('NatText', 'Aller_Rg.ttf');
	addLuaText("NatText")
	
	makeLuaText("TomText", "", 900, textXPos, textYPos)
	setTextSize("TomText", 70)
	setTextColor('TomText', '125dd9');
	addLuaText("TomText")
	
	makeLuaText("YuriText", "", 900, textXPos-5, textYPos)
	setTextSize("YuriText", 70)
	setTextColor('YuriText', '9e72d2');
	setTextFont('YuriText', 'Aller_Rg.ttf');
	addLuaText("YuriText")
	
	makeLuaText("YuriText2", "", 900, textXPos-10, textYPos)
	setTextSize("YuriText2", 60)
	setTextColor('YuriText2', '9e72d2');
	setTextFont('YuriText2', 'Aller_Rg.ttf');
	addLuaText("YuriText2")
	
	makeLuaText("TordText", "", 900, textXPos, textYPos)
	setTextSize("TordText", 70)
	setTextColor('TordText', 'd9124c');
	addLuaText("TordText")
	
	makeLuaText("EduardoText", "", 900, textXPos, textYPos)
	setTextSize("EduardoText", 70)
	setTextColor('EduardoText', '11712b');
	addLuaText("EduardoText")
	
	makeLuaText("EduardoText2", "", 900, textXPos-10, textYPos)
	setTextSize("EduardoText2", 60)
	setTextColor('EduardoText2', '11712b');
	addLuaText("EduardoText2")
	
	makeLuaText("SenpaiText", "", 900, textXPos, textYPos)
	setTextSize("SenpaiText", 50)
	setTextColor('SenpaiText', 'ea9e61');
	addLuaText("SenpaiText")
	
	setObjectCamera('icon', 'camHud')
	setObjectOrder('icon', getObjectOrder('EduardoText') + 1)
	addLuaSprite('icon', false)
end

function onEvent(name, value1, value2)
    if name == "subtitles" then
		if value1 == 'sayo' then
			if value2 == '' then
				setTextString("SayoText", "")
			else
				setTextString("SayoText", "Sayori: "..value2)
				objectPlayAnimation('icon', 'Sayo', true)
			end
		elseif value1 == 'matt' then
			if value2 == '' then
				setTextString("MattText", "")
			else
				setTextString("MattText", "Matt: "..value2)
				objectPlayAnimation('icon', 'Matt', true)
			end
		elseif value1 == 'nat' then
			if value2 == '' then
				setTextString("NatText", "")
			else
				setTextString("NatText", "Natsuki: "..value2)
				objectPlayAnimation('icon', 'Nat', true)
			end
		elseif value1 == 'tom' then
			if value2 == '' then
				setTextString("TomText", "")
			else
				setTextString("TomText", "Tom: "..value2)
				objectPlayAnimation('icon', 'Tom', true)
			end
		elseif value1 == 'yuri' then
			if value2 == '' then
				setTextString("YuriText", "")
			else
				setTextString("YuriText", "Yuri: "..value2)
				objectPlayAnimation('icon', 'Yuri', true)
			end
		elseif value1 == 'yuri2' then
			if value2 == '' then
				setTextString("YuriText2", "")
			else
				setTextString("YuriText2", "Yuri: "..value2)
				objectPlayAnimation('icon', 'Yuri', true)
				setProperty('icon.alpha', 1)
			end
		elseif value1 == 'tord' then
			if value2 == '' then
				setTextString("TordText", "")
			else
				setTextString("TordText", "Tord: "..value2)
				objectPlayAnimation('icon', 'Tord', true)
			end
		elseif value1 == 'eduardo' then
			if value2 == '' then
				setTextString("EduardoText", "")
			else
				setTextString("EduardoText", "Eduardo: "..value2)
				objectPlayAnimation('icon', 'Eduardo', true)
			end
		elseif value1 == 'eduardo2' then
			if value2 == '' then
				setTextString("EduardoText2", "")
			else
				setTextString("EduardoText2", "Eduardo: "..value2)
				objectPlayAnimation('icon', 'Eduardo', true)
				setProperty('icon.alpha', 1)
			end
		elseif value1 == 'senpai' then
			if value2 == '' then
				setTextString("SenpaiText", "")
			else
				setTextString("SenpaiText", "Senpai: "..value2)
				objectPlayAnimation('icon', 'Senpai', true)
				setProperty('icon.alpha', 1)
			end
		end
		
		if value2 == '' then
			setProperty('icon.alpha', 0)
		else
			setProperty('icon.alpha', 1)
		end
	end
end