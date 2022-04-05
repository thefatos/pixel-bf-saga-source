   
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'tankman-pixel-dead'); --tankman dead thingy
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'tankman_loss_sfx'); --mic and tankkman doing the UHHHG thing
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'tankmangameOver'); --p i x e l
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'tankmangameOverEnd'); --*respawns*
end	


function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end