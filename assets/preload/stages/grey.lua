
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 1300;
local yy = 800;
local xx2 = 1800;
local yy2 = 800;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

makeLuaSprite('graybg', 'graybg', 0, 100);
	
	addLuaSprite('graybg', false);

makeAnimatedLuaSprite('grayglowy', 'grayglowy', 1930, 500)
    addAnimationByPrefix('grayglowy', 'idle', 'jar??', 14, true)
    scaleObject('grayglowy', 1, 1)
    
    addLuaSprite('grayglowy', false)

makeAnimatedLuaSprite('Negro', 'Negro', 50, -130)
    addAnimationByPrefix('Negro', 'idle', 'Negro idle', 14, true)
    scaleObject('Negro', 1.7, 1.7)
    
    addLuaSprite('Negro', false)

makeLuaSprite('m', 'gray ctm porque los matas pipipipi te denunciare', 0, 100);
	addLuaSprite('m',true)
        setLuaSpriteScrollFactor('m', 1, 1);

makeLuaSprite('a', 'yo', 0, 100);
	addLuaSprite('a',true)
        setLuaSpriteScrollFactor('a', 1, 1);

makeLuaSprite('black', 'oscuro', 0, 100);
	addLuaSprite('black',true)
        setLuaSpriteScrollFactor('black', 1, 1);
end




function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.8)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

