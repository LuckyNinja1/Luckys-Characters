function onCreatePost()
	setTextFont('scoreTxt', 'Aller_Rg.ttf');
	setTextFont('botplayTxt', 'Aller_Rg.ttf');
	setTextFont('timeTxt', 'Aller_Rg.ttf');
end

function goodNoteHit(id, direction, noteType, isSustainNote)
   if not (botPlay or practice) then 
		updateAccuracy()
	end
end

function noteMissPress(direction)
    if not botPlay then 
		updateAccuracy()
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
    if not botPlay then 
		updateAccuracy()
	end
end

function onRecalculateRating()
	updateAccuracy()
end

function updateAccuracy() --For doki ratings and stuff
    ratingStr = accuracyToRatingString(getProperty('ratingPercent') * 100)
    setProperty('ratingName', ratingStr)
end

function accuracyToRatingString(accuracy) --Maybe there is a better way to do this??
    -- Please don't cancel me for repeat if else statements blame python 3.10 for not releasing sooner
    if accuracy >= 99.99 then
        return 'Perfect!!'
    elseif accuracy >= 90 and accuracy <= 99.99 then
        return 'Doki!'
    elseif accuracy >= 80 and accuracy <= 90 then
        return 'Great'
    elseif accuracy >= 70 and accuracy <= 80 then
        return 'Good'
    elseif accuracy >= 68 and accuracy <= 70 then
        return 'Nice'
    elseif accuracy >= 60 and accuracy <= 68 then
        return 'Bad'
    elseif accuracy >= 50 and accuracy <= 60 then
        return 'Awful'
    elseif accuracy >= 40 and accuracy <= 50 then
        return 'Hxppy Thxughts...'
    elseif accuracy >= 20 and accuracy <= 40 then
        return 'Missing Files'
    else
        return 'JUST MONIKA'
    end
end