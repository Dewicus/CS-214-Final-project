--Pokedex application for app development in Lua
--Final project for CS 214
-- Squirtle page 7 for the pokedex
--Taught by: Professor Neleson
--Created by: Cameron Dewey
--Started: Spring of 2016. On 03 - 17 - 2016
-- Completed: 5 - 2 - 2016

--------------------------------------------------------
--library needed for button creation
local widget = require( "widget" )
--library needed to switch pages
local composer = require( "composer" )
local scene = composer.newScene()

-- Functions to handle button events
--go to the next page
local function handleButtonEvent( event )
    if ( "ended" == event.phase ) then
		composer.gotoScene("page1")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("squirtle6")
	end
end
--play cry for invisible button
local function playcry (event)
	if  ( "ended" == event.phase) then 
		local cry = audio.loadSound("7.mp3")
		local cryplay = audio.play(cry)
	end
end
----------------------------------------------------------------------------------


-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view

	--backround implementation
	local backround = display.newImageRect( "backround.jpg", display.contentWidth, display.contentHeight)		
	backround.anchorX = 0
	backround.anchorY = 0
	sceneGroup:insert(backround)
	
	local nextPage = widget.newButton{
	label = "Back to Pokedex",
	onEvent = handleButtonEvent,
	emboss = true,
	-- Properties for a rounded rectangle button
	shape = "roundedRect",
	width = 150,
	height = 40,
	cornerRadius = 10,
	fillColor = { default={0,1,0,1}, over={1,0.1,0.7,0.4} },
	strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
	labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
	strokeWidth = 4
	}
	-- Position the Button
	nextPage.x = display.contentWidth - 80
	nextPage.y = display.contentHeight - 25
	sceneGroup:insert(nextPage)
	-- Create the widget for previous page button
local previousPage = widget.newButton(
    {
        label = "Previous stats",
        onEvent = handlepreviousPageEvent,
        emboss = true,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        width = 150,
        height = 40,
        cornerRadius = 10,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0 ,0 }, over={ 0, 0, 0 } },
        strokeWidth = 4
    }
)
	-- Position the Button
	previousPage.x = 80
	previousPage.y = display.contentHeight - 25
	sceneGroup:insert(previousPage)

	--Display pokemon sprite image
	local image = display.newImageRect( "007.png", 120,120)		
	image.anchorX = 0
	image.anchorY = 0
	sceneGroup:insert(image)
	--Display pokemon name and pokedex info
	local name = display.newText( "Squirtle", display.contentWidth*(5/8) , 60, native.systemFont, 20 )
	name:setFillColor( 0, 0, 0 )
	sceneGroup:insert(name)
	local poketype = display.newText( "The Tiny Turtle Pokemon", display.contentWidth*(5/8), 80, native.systemFont, 15)
	poketype:setFillColor( 0,0,0)
	sceneGroup:insert(poketype)
	--make sound button sensor for if sprite is touched and make invisible
	local touch = widget.newButton(
    {
        onEvent = playcry,
        -- Properties for a rounded rectangle button
        shape = "Rect",
        width = 120,
        height = 120,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0 ,0 }, over={ 0, 0, 0 } },
        strokeWidth = 4
		}
)
	-- Position the Button
	touch.x = 60
	touch.y = 60
	sceneGroup:insert(touch)
	touch.isVisible = false
	touch.isHitTestable = true  
	
	
	----------Individual to this page info------------------------------------
	
	--box to encase the data
	local backdrop = display.newRect(display.contentWidth*(2/4), display.contentHeight * (2.1/4), display.contentWidth*(7.9/8), display.contentHeight * (5/8))
	backdrop.strokeWidth = 4
	backdrop:setStrokeColor(0,0,0)
	sceneGroup:insert(backdrop)
	
	
	--attacks and level info
	local lvlattacks = display.newText("Attacks learned by leveling:", display.contentWidth/2, 120, native.systemFont, 17)
	lvlattacks:setFillColor (0,0,0)
	sceneGroup: insert(lvlattacks)
	--levels
	local lvl = display.newText("Level: \n\n   1\n   4\n   7\n   10\n   13\n   16\n   19\n   22\n   25\n   28\n   31\n   34\n   37\n   40", display.contentWidth/10, display.contentHeight/1.7777, native.systemFont, 13)
	lvl:setFillColor (0,0,0)
	sceneGroup: insert(lvl)
	--Attack name
	local move = display.newText("       Move:\n\n       Takle\n    Tail Whip\n   Water Gun\n    Withdraw\n     Bubble\n       Bite\n   Rapid Spin\n     Protect\n  Water Pulse\n    Aqua Tail\n   Skull Bash\n  Iron Defense\n  Rain Dance\n  Hydro Pump", display.contentWidth*(3/10), 270, native.systemFont, 13)
	move:setFillColor (0,0,0)
	sceneGroup: insert(move)
	--move type
	local Type = display.newText(" Type:\n\nNormal\nNormal\n Water\n Water\n Water\n  Dark\nNormal\nNormal\n Water\n Water\nNormal\n  Steel\n Water\n Water", display.contentWidth*(5.3/10), display.contentHeight/1.7777, native.systemFont, 13)
	Type:setFillColor (0,0,0)
	sceneGroup: insert(Type)
	--power of move
	local power = display.newText("Power:\n\n   50\n\n   40\n\n   40\n   60\n   20\n\n   60\n   90\n  130\n\n\n   110", display.contentWidth*(6.8/10), display.contentHeight/1.7777, native.systemFont, 13)
	power:setFillColor (0,0,0)
	sceneGroup: insert(power)
	--move accuracy
	local accuracy = display.newText(" Acc.:\n\n100%\n100%\n100%\n\n100%\n100%\n100%\n\n100%\n 90%\n100%\n\n\n 80%", display.contentWidth*(8.2/10), display.contentHeight/1.7777, native.systemFont, 13)
	accuracy:setFillColor (0,0,0)
	sceneGroup: insert(accuracy)
	--move power points
	local pp = display.newText(" PP:\n\n 35\n 40\n 10\n 25\n 35\n 15\n 20\n 25\n 20\n 20\n 15\n 10\n  5\n 15", display.contentWidth*(9.5/10), display.contentHeight/1.7777, native.systemFont, 13)
	pp:setFillColor (0,0,0)
	sceneGroup: insert(pp)
end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is still off screen (but is about to come on screen)

		
    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen
        -- Insert code here to make the scene come alive
        -- Example: start timers, begin animation, play audio, etc.
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen)
        -- Insert code here to "pause" the scene
        -- Example: stop timers, stop animation, stop audio, etc.
    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen
	end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

    -- Called prior to the removal of scene's view
    -- Insert code here to clean up the scene
    -- Example: remove display objects, save state, etc.
	
	nextPage.isVisible = false
	previousPage.isVisible = false
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------
return scene