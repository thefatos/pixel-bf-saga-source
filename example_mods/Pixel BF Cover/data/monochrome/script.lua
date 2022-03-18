
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'tankman-pixel-dead'); --tankman dead thingy
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --mic and tankkman doing the UHHHG thing
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --p i x e l
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --*respawns*
end	


function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end

function onUpdate(elpased)
    for i=0,3 do
   noteTweenAlpha(i+0, i, math.floor, 0.3)
   end
end
