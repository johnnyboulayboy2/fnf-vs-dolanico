function onCreate()
	-- background shit
	makeLuaSprite('paysageciel', 'paysageciel', -600, -300);
	setScrollFactor('paysageciel', 0.95, 0.95);
	scaleObject('paysageciel', 1.1, 1.1);
	
	makeLuaSprite('paysagesol', 'paysagesol', -800, 600);
	setScrollFactor('paysagesol', 1.0, 1.0);
	scaleObject('paysagesol', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('paysagesoleil', 'paysagesoleil', -50, -100);
		setScrollFactor('paysagesoleil', 0.9, 0.9);
		scaleObject('paysagesoleil', 1.2, 1.2);

		makeLuaSprite('paysagesoleil', 'paysagesoleil', -550, -300);
		setScrollFactor('paysagesoleil', 1.1, 1.1);
		scaleObject('paysagesoleil', 1.1, 1.1);
	end

	addLuaSprite('paysageciel', false);
	addLuaSprite('paysagesol', false);
	addLuaSprite('paysagesoleil', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end