--This script was created by Nes
function onCreate()
     makeLuaSprite('1', 'timeBar/1', 118.5, 22.5)
     makeLuaSprite('2', 'timeBar/2', 115, 20)
     makeLuaSprite('3', 'timeBar/3', 122, 24.25)
     makeLuaSprite('4', 'timeBar/4', 122, 24.25)
     makeLuaText('songNameTxt', songName, 0, 124, 19.3)
     setTextAlignment('songNameTxt', 'left')
   setTextSize('songNameTxt', 15)

 setObjectCamera('1', 'hud')
 setObjectCamera('2', 'hud')
 setObjectCamera('3', 'hud')
 setObjectCamera('4', 'hud')

 scaleObject('1', 1.185, .045)
 scaleObject('2', 1.21, .065)
 scaleObject('3', 1.165, .035)
 scaleObject('4', 1.165, .035)

 addLuaSprite('2', true)
 addLuaSprite('1', true)
 addLuaSprite('4', true)
 addLuaSprite('3', true)
 addLuaText('songNameTxt', true)

end

function onUpdate()
     setProperty('timeBarBG.visible', false)
     setProperty('timeBar.visible', false)
     setProperty('timeTxt.visible', false)
     scaleObject('3', 1.168 * getProperty("songPercent"), .035)
end
