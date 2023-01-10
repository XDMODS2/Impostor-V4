local xx = 500
local yy = 600
local xx2 = 1000

function onCreate()

makeLuaSprite( 'a', 'lobbybg', -1450, -410)
	scaleObject('a', 1.7, 1.7);
	setLuaSpriteScrollFactor('a', 1.0, 1.0)
	addLuaSprite('a', false)

	setProperty('a.visible', true)

end

function onUpdate()
    setProperty("gf.alpha", 0)
    if mustHitSection == false then
		triggerEvent('Camera Follow Pos',xx,yy)
	else
		triggerEvent('Camera Follow Pos',xx2,yy)
	end
end

