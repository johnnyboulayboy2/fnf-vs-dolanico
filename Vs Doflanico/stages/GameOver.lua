function onCreate()
	-- background shit
	makeLuaSprite('gameoverciel', 'gameoverciel', -600, -300);
	setScrollFactor('gameoverciel', 0.95, 0.95);
	scaleObject('gameoverciel', 1.1, 1.1);
	
	makeLuaSprite('gameoversol', 'gameoversol', -800, 600);
	setScrollFactor('gameoversol', 1.0, 1.0);
	scaleObject('gameoversol', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('gameoversoleil', 'gameoversoleil', -50, -100);
		setScrollFactor('gameoversoleil', 0.9, 0.9);
		scaleObject('gameoversoleil', 1.2, 1.2);
		
		makeLuaSprite('gameoversoleil', 'gameoversoleil', 1450, -100);
		setScrollFactor('gameoversoleil', 0.9, 0.9);
		scaleObject('gameoversoleil', 1.2, 1.2);
		setProperty('gameoversoleil.flipX', true); --mirror sprite horizontally

		makeLuaSprite('gameoversoleil', 'gameoversoleil', -550, -300);
		setScrollFactor('gameoversoleil', 1.1, 1.1);
		scaleObject('gameoversoleil', 1.1, 1.1);
	end

	addLuaSprite('gameoverciel', false);
	addLuaSprite('gameoversol', false);
	addLuaSprite('gameoversoleil', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end