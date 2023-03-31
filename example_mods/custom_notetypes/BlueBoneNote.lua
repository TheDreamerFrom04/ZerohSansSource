local EnableSans = false

function onCreate()
    if difficulty == 1 then
        if songName == 'Sansational' then
            EnableSans = true
        end
    end
end

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BlueBoneNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'sans/BlueNote_assets');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Change texture
		end
	end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'BlueBoneNote' then
		if EnableSans == true then
			setProperty('health', 0);
		else
			setProperty('health',getProperty('health') - 0.4);
		end
	end
end