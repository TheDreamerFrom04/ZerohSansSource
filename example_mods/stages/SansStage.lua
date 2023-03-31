function onCreate()
-- background shit
	makeLuaSprite('BG','sans/hall',0,100)
	makeLuaSprite('Battle','sans/battle',-150,-900)
	scaleObject('BG',1.55,1.5)
	scaleObject('Battle',1.15,1.1)
	addLuaSprite('Battle', false)
	addLuaSprite('BG', false)
end

function onUpdate(elapsed)
	if BfFly == true then
	 songPos = getSongPosition()
	 local currentBeat = (songPos/1000)*(bpm/80)
	 doTweenY(dadTweenY, 'boyfriend', getProperty('boyfriend.y') + 50*math.sin((currentBeat*1)*math.pi),0.5)
	end

end

function onStepHit()
	if curStep == 1791 then
		doTweenColor('bgColorTween', 'SansBG', 'FFFFFF', 1, 'linear')
	end
end

