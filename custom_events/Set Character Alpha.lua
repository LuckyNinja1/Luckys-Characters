function onEvent(name, value1, value2)
    if name == "Set Character Alpha" then
		if value1 == 'dad' then
			setProperty('dad.alpha', value2)
		elseif value1 == 'gf' then
			setProperty('gf.alpha', value2)
		else
			setProperty('boyfriend.alpha', value2)
		end
	end
end