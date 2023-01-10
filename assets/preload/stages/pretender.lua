
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  100;
local yy =  250;
local xx2 = 380;
local yy2 = 250;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('fondo', 'mira1', -1230, -750);
	setScrollFactor('fondo', 0.9, 0.9);

	addLuaSprite('fondo', false);

makeAnimatedLuaSprite('gfdead', 'gfdead', -140, 60)
    addAnimationByPrefix('gfdead', 'idle', 'GF Dancing Beat', 14, true)
    scaleObject('gfdead', 1.3, 1.3)
    
    addLuaSprite('gfdead', false)

makeAnimatedLuaSprite('Blue dead', 'Blue dead',-1280, -850);
 setLuaSpriteScrollFactor('Blue dead', 0.9, 0.9);		
			 addLuaSprite('Blue dead', true);
			 scaleObject('Blue dead', 2.8, 2.8);

addLuaSprite('Blue dead', true); 
addAnimationByPrefix('Blue dead', 'idle', 'Blue dead idle', 10, true);

setProperty('Blue dead.visible', true);

makeLuaSprite('idk', 'front pot1', -1350, 650);
	addLuaSprite('idk',true)
        setLuaSpriteScrollFactor('idk', 1, 1);

makeLuaSprite('verde', 'green', -1430, -750);
	addLuaSprite('verde',true)
        setLuaSpriteScrollFactor('verde', 1, 1);

makeLuaSprite('black', 'lightingpretender', -1630, -750);
	addLuaSprite('black',true)
        setLuaSpriteScrollFactor('black', 1, 1);
end




function onUpdate()
    setProperty('gf.alpha', 0)
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
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

            setProperty('defaultCamZoom',0.5)
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

function onEndSong()
    followchars = false;
    triggerEvent('Camera Follow Pos','400','150')
end
