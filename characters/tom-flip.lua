local playedHeyAnim = false
function onUpdate(elapsed)	
    if keyJustPressed('space') and getProperty('boyfriend.curCharacter') == 'tom-flip' and not playedHeyAnim then
		characterPlayAnim('boyfriend', 'hey', true);
		setProperty('boyfriend.specialAnim', true);
		playedHeyAnim = true
		runTimer('heyTime', 0.3)
	end
	
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'heyTime' and playedHeyAnim then
		characterPlayAnim('boyfriend', 'hey-loop', true);
		setProperty('boyfriend.holdTimer', 0);
		playedHeyAnim = false
	end
end