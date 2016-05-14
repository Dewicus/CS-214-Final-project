--Pokedex application for app development in Lua
--Final project for CS 214
-- Welcome page for the pokedex
--Taught by: Professor Neleson
--Created by: Cameron Dewey
--Started: Spring of 2016. On 03 - 17 - 2016
-- Completed: 5 - 6 - 2016

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

-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view

	--backround implementation
	local backround = display.newImageRect( "backround.jpg", display.contentWidth, display.contentHeight)		
	backround.anchorX = 0
	backround.anchorY = 0
	sceneGroup:insert(backround)
	
	--make page button sensor for if page is touched and make invisible
	local touch = widget.newButton(
    {
        onEvent = handleButtonEvent,
        -- Properties for a rounded rectangle button
        shape = "Rect",
        width = display.contentWidth,
        height = display.contentHeight,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0 ,0 }, over={ 0, 0, 0 } },
        strokeWidth = 4
		}
)
	-- Position the Button
	touch.x = display.contentWidth/2
	touch.y = display.contentHeight/2
	sceneGroup:insert(touch)
	touch.isVisible = false
	touch.isHitTestable = true  
	
	
	----------Individual to this page info------------------------------------
	
	
	--games Ruby sapphire and emerald
	local Welcome = display.newText("Welcome to the DeweyDex", display.contentWidth/2, display.contentHeight/2.9, native.systemFont, 24) 
	Welcome:setFillColor (0,0,0)
	sceneGroup: insert(Welcome)
	
	--dimond pearl and platinum
	local dpp = display.newText("This is a pokedex consisting of the original 151 pokemon. If you wish to replay cries you may touch the pokemon's sprite to replay its cry. Touch anywhere to continue!", display.contentWidth/2, 350,310,0,center, native.systemFont, 15)
	dpp:setFillColor (0,0,0)
	sceneGroup: insert(dpp)
	local dppEntry = display.newText("All data in entries was compiled from bulbapedia.bulbagarden.net along with sprite images.", display.contentWidth/2, display.contentHeight*(14/15),310,0,right, native.systemFont, 10)
	dppEntry:setFillColor (0,0,0)
	sceneGroup: insert(dppEntry)

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