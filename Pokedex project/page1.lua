--Pokedex application for app development in Lua
--Final project for CS 214
--Main page for the pokedex
--Taught by: Professor Neleson
--Created by: Cameron Dewey
--Started: Spring of 2016. On 03 - 17 - 2016
-- Completed: 

--------------------------------------------------------
local composer = require( "composer" )
local widget = require("widget")
local scene = composer.newScene()

-- -----------------------------------------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE unless "composer.removeScene()" is called
-- -----------------------------------------------------------------------------------------------------------------

-- Local forward references should go here

--next page button event handler
local function handleButtonEvent( event )
    if ( "ended" == event.phase ) then
		composer.gotoScene("page2")
    end
end

--bulbasuarButton event handler
local function handleBulbasuarEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("bulbasaur")
	end
end

local function handleIvysuarEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("ivysaur")
	end
end

local function handleVenusuarEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("venusaur")
	end
end

--bulbasuarButton event handler
local function handleCharmanderEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("charmander")
	end
end

local function handleCharmeleonEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("charmeleon")
	end
end

local function handleCharizardEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("charizard")
	end
end

local function handleSquirtleEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("squirtle")
	end
end

local function handleWartortleEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("wartortle")
	end
end

local function handleBlastoiseEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("blastoise")
	end
end

local function handleCaterpieEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("caterpie")
	end
end

local function handleMetapodEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("metapod")
	end
end

local function handleButterfreeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("butterfree")
	end
end

local function handleWeedleEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("weedle")
	end
end

local function handleKakunaEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("kakuna")
	end
end

local function handleBeedrillEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("beedrill")
	end
end

local function handlePidgeyEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("pidgey")
	end
end
----------------------------------------------------------------------------------


-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view

    -- Initialize the scene here
    -- Example: add display objects to "sceneGroup", add touch listeners, etc.
	
		--backround implementation
	local backround = display.newImageRect( "backround.jpg", display.contentWidth, display.contentHeight)		
	backround.anchorX = 0
	backround.anchorY = 0
	sceneGroup:insert(backround)	
		
	local nextPage = widget.newButton{
		label = "Next Page",
		onEvent = handleButtonEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,1,0,1}, over={1,0.1,0.7,0.4} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		strokeWidth = 4
	}
	-- Position the Button
	nextPage.x = display.contentWidth -	80
	nextPage.y = display.contentHeight - 25
	sceneGroup:insert(nextPage)
	
	local bulbasuarButton = widget.newButton{
		label = "001       Bulbasaur",
		onEvent = handleBulbasuarEvent,
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
	bulbasuarButton.x = 80
	bulbasuarButton.y = 40
	sceneGroup:insert(bulbasuarButton)
	
	local IvysaurButton = widget.newButton{
		label = "002           Ivysaur",
		onEvent = handleIvysuarEvent,
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
	IvysaurButton.x =  80
	IvysaurButton.y = 90
	sceneGroup:insert(IvysaurButton)
	
	local VenusaurButton = widget.newButton{
		label = "003       Venusaur",
		onEvent = handleVenusuarEvent,
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
	VenusaurButton.x =  80
	VenusaurButton.y = 140
	sceneGroup:insert(VenusaurButton)
	
	local CharmanderButton = widget.newButton{
		label = "004   Charmander",
		onEvent = handleCharmanderEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	CharmanderButton.x =  80
	CharmanderButton.y = 190
	sceneGroup:insert(CharmanderButton)
	
	local CharmeleonButton = widget.newButton{
		label = "005   Charmeleon",
		onEvent = handleCharmeleonEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	CharmeleonButton.x =  80
	CharmeleonButton.y = 240
	sceneGroup:insert(CharmeleonButton)
	
	local CharizardButton = widget.newButton{
		label = "006       Charizard",
		onEvent = handleCharizardEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	CharizardButton.x = 80
	CharizardButton.y = 290
	sceneGroup:insert(CharizardButton)
	
	local SquirtleButton = widget.newButton{
		label = "007          Squirtle",
		onEvent = handleSquirtleEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	SquirtleButton.x = 80
	SquirtleButton.y = 340
	sceneGroup:insert(SquirtleButton)
	
	local WartortleButton = widget.newButton{
		label = "008       Wartortle",
		onEvent = handleWartortleEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	WartortleButton.x = 80
	WartortleButton.y = 390
	sceneGroup:insert(WartortleButton)
	
	local BlastoiseButton = widget.newButton{
		label = "009       Blastoise",
		onEvent = handleBlastoiseEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	BlastoiseButton.x = display.contentWidth - 80
	BlastoiseButton.y = 40
	sceneGroup:insert(BlastoiseButton)
	
	local CaterpieButton = widget.newButton{
		label = "010        Caterpie",
		onEvent = handleCaterpieEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.3,.7,.3,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	CaterpieButton.x = display.contentWidth - 80
	CaterpieButton.y = 90
	sceneGroup:insert(CaterpieButton)
	
	local MetapodButton = widget.newButton{
		label = "011        Metapod",
		onEvent = handleMetapodEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.3,.7,.3,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	MetapodButton.x = display.contentWidth - 80
	MetapodButton.y = 140
	sceneGroup:insert(MetapodButton)
	
	local ButterfreeButton = widget.newButton{
		label = "012       Butterfree",
		onEvent = handleButterfreeEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.3,.7,.3,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	ButterfreeButton.x = display.contentWidth - 80
	ButterfreeButton.y = 190
	sceneGroup:insert(ButterfreeButton)
	
	local WeedleButton = widget.newButton{
		label = "013          Weedle",
		onEvent = handleWeedleEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.3,.7,.3,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	WeedleButton.x = display.contentWidth - 80
	WeedleButton.y = 240
	sceneGroup:insert(WeedleButton)
	
	local KakunaButton = widget.newButton{
		label = "014          Kakuna",
		onEvent = handleKakunaEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.3,.7,.3,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	KakunaButton.x = display.contentWidth - 80
	KakunaButton.y = 290
	sceneGroup:insert(KakunaButton)
	
	local BeedrillButton = widget.newButton{
		label = "015          Beedrill",
		onEvent = handleBeedrillEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.3,.7,.3,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	BeedrillButton.x = display.contentWidth - 80
	BeedrillButton.y = 340
	sceneGroup:insert(BeedrillButton)
	
	local PidgeyButton = widget.newButton{
		label = "016           Pidgey",
		onEvent = handlePidgeyEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.85,.85,.85,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	PidgeyButton.x = display.contentWidth - 80
	PidgeyButton.y = 390
	sceneGroup:insert(PidgeyButton)
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
	
	nextPage.isVisible = true
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------
return scene