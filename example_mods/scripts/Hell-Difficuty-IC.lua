local EnableSans = false

function onCreate()
    if difficulty == 1 then
        if songName == 'Sansational' then
            EnableSans = true
        end
    end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
     if EnableSans == true then
	if noteType == 'BlueBoneNote' then
		setProperty('health',getProperty('health') - 2)
	end
    end
end

function noteMiss(id, noteData, noteType, isSustainNote)
    if EnableSans == true then
        if noteType == 'OrangeBoneNote' then
            setProperty('health',getProperty('health') - 2)
        end
    end
end