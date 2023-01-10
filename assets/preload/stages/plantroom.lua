
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  170;
local yy =  200;
local xx2 = 340;
local yy2 = 200;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('fondo', 'mira', -1230, -750);
	setScrollFactor('fondo', 0.9, 0.9);

	addLuaSprite('fondo', false);

makeAnimatedLuaSprite('grey', 'grey', -1340, -850)
    addAnimationByPrefix('grey', 'idle', 'grey idle', 14, true)
    scaleObject('grey', 1.8, 1.8)
    
    addLuaSprite('grey', false)

makeAnimatedLuaSprite('tomatomongus', 'tomatomongus', -340, -750)
    addAnimationByPrefix('tomatomongus', 'idle', 'tomatomongus idle', 14, true)
    scaleObject('tomatomongus', 1.8, 1.8)
    
    addLuaSprite('tomatomongus', false)

makeAnimatedLuaSprite('Blue', 'Blue',-1980, -570);
 setLuaSpriteScrollFactor('Blue', 0.9, 0.9);		
			 addLuaSprite('Blue', true);
			 scaleObject('Blue', 2, 2);

addLuaSprite('Blue', true); 
addAnimationByPrefix('Blue', 'idle', 'Blue idle', 10, true);

setProperty('Blue.visible', true);

makeAnimatedLuaSprite('wtf y este random', 'wtf y este random',180, -510);
 setLuaSpriteScrollFactor('wtf y este random', 0.9, 0.9);		
			 addLuaSprite('wtf y este random', true);
			 scaleObject('wtf y este random', 2.2, 2.2);

addLuaSprite('wtf y este random', true); 
addAnimationByPrefix('wtf y este random', 'idle', 'wtf y este random idle', 10, true);

setProperty('wtf y este random.visible', true);


makeLuaSprite('idk', 'front pot', -1350, 650);
	addLuaSprite('idk',true)
        setLuaSpriteScrollFactor('idk', 1, 1);

makeAnimatedLuaSprite('lol', 'lol',-980, -2010);
 setLuaSpriteScrollFactor('lol', 0.9, 0.9);		
			 addLuaSprite('lol', true);
			 scaleObject('lol', 4.2, 4.2);

addLuaSprite('lol', true); 
addAnimationByPrefix('lol', 'idle', 'lol idle', 10, true);

setProperty('lol.visible', true);

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
