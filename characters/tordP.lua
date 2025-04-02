function onUpdate(elapsed)
    if keyJustPressed('space') and getProperty('boyfriend.curCharacter') == 'tordP' then
		characterPlayAnim('boyfriend', 'haha', true)
		setProperty('boyfriend.specialAnim', true);
		playSound('tordLaugh', 1);
		playSound('tordLaugh', 0.85);
		playSound('tordLaugh', 0.85);
	end
end

function onEvent(name, value1, value2)
    if name == "Hey!" and getProperty('boyfriend.curCharacter') == 'tordP' then
		playSound('tordLaugh', 1);
		playSound('tordLaugh', 0.85);
		playSound('tordLaugh', 0.85);
	end
	if name == "Play Animation" and getProperty('boyfriend.curCharacter') == 'tordP' and value1 == 'bf' or '0' and value2 == 'hey' then
		playSound('tordLaugh', 1);
		playSound('tordLaugh', 0.85);
		playSound('tordLaugh', 0.85);
	end
end