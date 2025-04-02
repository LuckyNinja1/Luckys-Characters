function onEvent(name, value1, value2)
    if name == "Set Cam Zoom" then
		setProperty('camGame.zoom',value1)
		setProperty('defaultCamZoom',value1)
	end
end