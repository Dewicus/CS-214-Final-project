--Pokedex application for app development in Lua
--Final project for CS 214
-- Kakuna page 5 for the pokedex
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
		composer.gotoScene("kakuna6")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("kakuna4")
	end
end
--play cry for invisible button
local function playcry (event)
	if  ( "ended" == event.phase) then 
		local cry = audio.loadSound("14.mp3")
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
	label = "Pokemon stats",
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
        label = "Previous entries",
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
	local image = display.newImageRect( "014.png", 120,120)		
	image.anchorX = 0
	image.anchorY = 0
	sceneGroup:insert(image)
	--Display pokemon name and pokedex info
	local name = display.newText( "Kakuna", display.contentWidth*(5/8) , 60, native.systemFont, 20 )
	name:setFillColor( 0, 0, 0 )
	sceneGroup:insert(name)
	local poketype = display.newText( "The Cocoon Pokemon", display.contentWidth*(5/8), 80, native.systemFont, 15)
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
	
	--games black white black 2 and white 2
	local bl = display.newText(" Black, White, Black 2 and White 2 pokedex \n                           entries:", display.contentWidth/2, 130,310,0,center, native.systemFont, 17)
	bl:setFillColor (0,0,0)
	sceneGroup: insert(bl)
	local blEntry = display.newText("While awaiting evolution, it hides from predators under leaves and in nooks of branches.", display.contentWidth/2, 175,310,0,right, native.systemFont, 15)
	blEntry:setFillColor (0,0,0)
	sceneGroup: insert(blEntry)
	
	--x and y
	local x = display.newText("X pokedex entry:", display.contentWidth/2, 295, native.systemFont, 17)
	x:setFillColor (0,0,0)
	sceneGroup: insert(x)
	local xEntry = display.newText("Almost incapable of moving, this Pokémon can only harden its shell to protect itself when it is in danger.", display.contentWidth/2, 330,310,0,right, native.systemFont, 15)
	xEntry:setFillColor (0,0,0)
	sceneGroup: insert(xEntry)
	
	local y = display.newText("Y pokedex entry:", display.contentWidth/2, 370, native.systemFont, 17)
	y:setFillColor (0,0,0)
	sceneGroup: insert(y)
	local yEntry = display.newText("While awaiting evolution, it hides from predators under leaves and in nooks of branches.", display.contentWidth/2, 405,310,0,right, native.systemFont, 15)
	yEntry:setFillColor (0,0,0)
	sceneGroup: insert(yEntry)
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