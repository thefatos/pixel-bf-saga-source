

local turnvalue = 10
function onBeatHit()

turnvalue = 10
if curBeat % 2 == 0 then
turnvalue = -10
end



setProperty('iconP2.angle',-turnvalue)
setProperty('iconP1.angle',turnvalue)

doTweenAngle('iconTween1','iconP1',0,crochet/1000,'circOut')
doTweenAngle('iconTween2','iconP2',0,crochet/1000,'circOut')


end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end

function onRecalculateRating()
	setTextString('sicks', 'Sicks: ' .. getProperty('sicks'));
	setTextString('goods', 'Goods: ' .. getProperty('goods'));
	setTextString('bads', 'Bads: ' .. getProperty('bads'));
	setTextString('shits', 'Shits: ' .. getProperty('shits'));
end

function onCreatePost()
	makeLuaText('sicks', 'Sicks: ' .. getProperty('sicks'), 200, 30, 355);
	makeLuaText('goods', 'Goods: ' .. getProperty('goods'), 200, 30, 380);
	makeLuaText('bads', 'Bads: ' .. getProperty('bads'), 200, 30, 405);
	makeLuaText('shits', 'Shits: ' .. getProperty('shits'), 200, 30, 430);
	setTextSize('sicks', 26)
	setTextSize('goods', 26)
	setTextSize('bads', 26)
	setTextSize('shits', 26)
	setTextAlignment('sicks', 'left')
	setTextAlignment('goods', 'left')
	setTextAlignment('bads', 'left')
	setTextAlignment('shits', 'left')
	addLuaText('sicks');
	addLuaText('goods');
	addLuaText('bads');
	addLuaText('shits');
end
