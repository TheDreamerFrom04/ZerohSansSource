-- char-sans is shaded
-- char-battle is used in the battle thing
-- Sans-fs is the unshaded sans used in Final Stretch.

function onEvent(name, value1, value2)
    if value1 == 'water' then
setProperty('wat.visible', true)
setProperty('battle.visible', false)
setProperty('sansbg.visible', false)

triggerEvent('Change Character', 'bf', 'bf')
triggerEvent('Change Character', 'gf', 'gf')
triggerEvent('Change Character', 'dad', 'Sans-fs')
triggerEvent('Flash Camera', '0.35', '')
end

if value1 == 'sans' then
setProperty('wat.visible', false)
setProperty('battle.visible', false)
setProperty('sansbg.visible', true)

triggerEvent('Change Character', 'bf', 'bf-sans')
triggerEvent('Change Character', 'gf', 'gf-sans')
triggerEvent('Change Character', 'dad', 'sans')
triggerEvent('Flash Camera', '0.35', '')
end

if value1 == 'black' then
    triggerEvent('fs', '0.5', '90')
    end
    if not value1 == 'black' then
        triggerEvent('fs', '0', '0')
        end

if value1 == 'battle' then
    setProperty('bg2.visible', false)
    setProperty('bg3.visible', true)
    setProperty('bg.visible', false)
    
    triggerEvent('Change Character', 'bf', 'battlebf')
    --triggerEvent('Change Character', 'gf', 'gf-battle')
    triggerEvent('Change Character', 'dad', 'battlesans')
    triggerEvent('Flash Camera', '0.35', '')
    end
end

function onCreate()
    makeLuaSprite('preload', 'preload', 0, 0)
    addLuaSprite('preload', true)
    setObjectCamera('preload', 'hud')
    setProperty('preload.visible', false)
function onStepHit()
    if curStep == 0 then
        setProperty('preload.visible', true)

        triggerEvent('Sans BG Style', 'water', 'note here')
        triggerEvent('Sans BG Style', 'sans', 'fuck you')
        triggerEvent('Sans BG Style', 'battle', 'kys')

        if curStep == 8 then
            setProperty('preload.visible', false)
            triggerEvent('Sans BG Style', 'sans', 'sus')
        end
    end
end
end