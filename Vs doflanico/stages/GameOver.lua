function onCreate()
	-- background shit
	makeLuaSprite('stagebackGameOver', 'stagebackGameOver', -600, -300);
	setScrollFactor('stagebackGameOver', 0.95, 0.95);
	scaleObject('stagebackGameOver', 1.1, 1.1);
	
	makeLuaSprite('stagefrontGameOver', 'stagefrontGameOver', -800, 600);
	setScrollFactor('stagefrontGameOver', 1.0, 1.0);
	scaleObject('stagefrontGameOver', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_lightEVIL', -50, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.2, 1.2);
		
		makeLuaSprite('stagelight_right', 'stage_lightEVIL', 1450, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.2, 1.2);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtainsGameOver', 'stagecurtainsGameOver', -550, -300);
		setScrollFactor('stagecurtainsGameOver', 1.1, 1.1);
		scaleObject('stagecurtainsGameOver', 1.1, 1.1);
	end

	addLuaSprite('stagebackGameOver', false);
	addLuaSprite('stagefrontGameOver', false);
	addLuaSprite('stagecurtainsGameOver', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end