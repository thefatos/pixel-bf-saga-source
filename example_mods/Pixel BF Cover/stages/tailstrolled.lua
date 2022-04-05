function onCreate()
	-- background shit
	makeLuaSprite('tailstrolledbg', 'tailstrolledbg', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('tailstrolledstage', 'tailstrolledstage', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('tailstrolledcur', 'tailstrolledcur', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('tailstrolledbg', false);
	addLuaSprite('tailstrolledstage', false);
	addLuaSprite('tailstrolledcur', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end