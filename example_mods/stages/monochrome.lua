function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9)	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('monochromeback', false);
	addLuaSprite('monochromefront', false);
	addLuaSprite('monochrome_light', false);
	addLuaSprite('monochrome_light', false);
	addLuaSprite('monochromecurtains', false);

	function onCreate()
		setPropertyFromClass('GameOverSubstate', 'characterName', 'tankman-pixel-dead'); --tankman dead thingy
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --mic and tankkman doing the UHHHG thing
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --p i x e l
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --*respawns*
	end		
end