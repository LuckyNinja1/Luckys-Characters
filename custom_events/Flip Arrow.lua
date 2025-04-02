local flipUI = false
local iconPoz = 0

function onEvent(n,v1,v2)
	if n == "Flip Arrow" and not middlescroll then
		if v1 == 'flip' then
			setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
			setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
			setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
			setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
			
			setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0)
			setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1)
			setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2)
			setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3)
			
			flipUI = true
		else
			setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0)
			setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1)
			setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2)
			setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3)
			
			setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
			setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
			setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
			setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
			
			flipUI = false
		end
	end
end

function onUpdatePost(elapsed)
	iconPoz = getProperty('healthBar.x')+getProperty('healthBar.width')*getProperty('healthBar.percent')*0.01
	if flipUI then
		setProperty('iconP1.x', iconPoz-136)
		setProperty('iconP1.angle', getProperty('iconP2.angle'))
		setProperty('iconP1.y', getProperty('iconP2.y'))
		setProperty('iconP1.scale.x', getProperty('iconP2.scale.x'))
		setProperty('iconP1.scale.y', getProperty('iconP2.scale.y'))
		
		setProperty('iconP2.x', iconPoz-36)
		setProperty('iconP2.angle', getProperty('iconP1.angle'))
		setProperty('iconP2.y', getProperty('iconP1.y'))
		setProperty('iconP2.scale.x', getProperty('iconP1.scale.x'))
		setProperty('iconP2.scale.y', getProperty('iconP1.scale.y'))
		
		setProperty('healthBar.flipX', true)
		setProperty('iconP1.flipX', true)
		setProperty('iconP2.flipX', true)
	else
		setProperty('iconP1.x', getProperty('iconP1.x'))
		setProperty('iconP1.angle', getProperty('iconP1.angle'))
		setProperty('iconP1.y', getProperty('iconP1.y'))
		setProperty('iconP1.scale.x', getProperty('iconP1.scale.x'))
		setProperty('iconP1.scale.y', getProperty('iconP1.scale.y'))
		
		setProperty('iconP2.x', getProperty('iconP2.x'))
		setProperty('iconP2.angle', getProperty('iconP2.angle'))
		setProperty('iconP2.y', getProperty('iconP2.y'))
		setProperty('iconP2.scale.x', getProperty('iconP2.scale.x'))
		setProperty('iconP2.scale.y', getProperty('iconP2.scale.y'))
		
		setProperty('healthBar.flipX', false)
		setProperty('iconP1.flipX', false)
		setProperty('iconP2.flipX', false)
	end
end