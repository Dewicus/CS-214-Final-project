--Pokedex application for app development in Lua
--Final project for CS 214
-- page5 for the pokedex
--Taught by: Professor Neleson
--Created by: Cameron Dewey
--Started: Spring of 2016. On 03 - 17 - 2016
-- Completed: 

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
		composer.gotoScene("page6")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page4")
	end
end

--bulbasuarButton event handler
local function handleAlakazamEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("alakazam")
	end
end

local function handleMachopEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("machop")
	end
end

local function handleMachokeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("machoke")
	end
end

--bulbasuarButton event handler
local function handleMachampEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("machamp")
	end
end

local function handleBellsproutEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("bellsprout")
	end
end

local function handleWeepinbellEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("weepinbell")
	end
end

local function handleVictreebellEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("victreebell")
	end
end

local function handleTentacoolEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("tentacool")
	end
end

local function handleTentacruelEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("tentacruel")
	end
end

local function handleGeodudeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("geodude")
	end
end

local function handleGravelerEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("graveler")
	end
end

local function handleGolemEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("golem")
	end
end

local function handlePonytaEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("ponyta")
	end
end

local function handleRapidashEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("rapidash")
	end
end

local function handleSlowpokeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("slowpoke")
	end
end

local function handleSlowbroEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("slowbro")
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
	
	-- Create the widget for previous page button
local previousPage = widget.newButton(
    {
        label = "Previous Page",
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
	
	local AlakazamButton = widget.newButton{
		label = "065        Alakazam",
		onEvent = handleAlakazamEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,0,.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	AlakazamButton.x = 80
	AlakazamButton.y = 40
	sceneGroup:insert(AlakazamButton)
	
	local MachopButton = widget.newButton{
		label = "066           Machop",
		onEvent = handleMachopEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.65,.2,.2,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	MachopButton.x =  80
	MachopButton.y = 90
	sceneGroup:insert(MachopButton)
	
	local MachokeButton = widget.newButton{
		label = "067         Machoke",
		onEvent = handleMachokeEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.65,.2,.2,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	MachokeButton.x =  80
	MachokeButton.y = 140
	sceneGroup:insert(MachokeButton)
	
	local MachampButton = widget.newButton{
		label = "068        Machamp",
		onEvent = handleMachampEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.65,.2,.2,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	MachampButton.x =  80
	MachampButton.y = 190
	sceneGroup:insert(MachampButton)
	
	local BellsproutButton = widget.newButton{
		label = "069       Bellsprout",
		onEvent = handleBellsproutEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,1,0.0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	BellsproutButton.x =  80
	BellsproutButton.y = 240
	sceneGroup:insert(BellsproutButton)
	
	local WeepinbellButton = widget.newButton{
		label = "070      Weepinbell",
		onEvent = handleWeepinbellEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,1,0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	WeepinbellButton.x = 80
	WeepinbellButton.y = 290
	sceneGroup:insert(WeepinbellButton)
	
	local VictreebellButton = widget.newButton{
		label = "071       Victreebell",
		onEvent = handleVictreebellEvent,
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
	VictreebellButton.x = 80
	VictreebellButton.y = 340
	sceneGroup:insert(VictreebellButton)
	
	local TentacoolButton = widget.newButton{
		label = "072        Tentacool",
		onEvent = handleTentacoolEvent,
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
	TentacoolButton.x = 80
	TentacoolButton.y = 390
	sceneGroup:insert(TentacoolButton)
	
	local TentacruelButton = widget.newButton{
		label = "073      Tentacruel",
		onEvent = handleTentacruelEvent,
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
	TentacruelButton.x = display.contentWidth - 80
	TentacruelButton.y = 40
	sceneGroup:insert(TentacruelButton)
	
	local GeodudeButton = widget.newButton{
		label = "074        Geodude",
		onEvent = handleGeodudeEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.6,.6,.1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	GeodudeButton.x = display.contentWidth - 80
	GeodudeButton.y = 90
	sceneGroup:insert(GeodudeButton)
	
	local GravelerButton = widget.newButton{
		label = "075        Graveler",
		onEvent = handleGravelerEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.6,.6,.1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	GravelerButton.x = display.contentWidth - 80
	GravelerButton.y = 140
	sceneGroup:insert(GravelerButton)
	
	local GolemButton = widget.newButton{
		label = "076            Golem",
		onEvent = handleGolemEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.6,.6,.1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	GolemButton.x = display.contentWidth - 80
	GolemButton.y = 190
	sceneGroup:insert(GolemButton)
	
	local PonytaButton = widget.newButton{
		label = "077           Ponyta",
		onEvent = handlePonytaEvent,
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
	PonytaButton.x = display.contentWidth - 80
	PonytaButton.y = 240
	sceneGroup:insert(PonytaButton)
	
	local RapidashButton = widget.newButton{
		label = "078       Rapidash",
		onEvent = handleRapidashEvent,
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
	RapidashButton.x = display.contentWidth - 80
	RapidashButton.y = 290
	sceneGroup:insert(RapidashButton)
	
	local SlowpokeButton = widget.newButton{
		label = "079       Slowpoke",
		onEvent = handleSlowpokeEvent,
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
	SlowpokeButton.x = display.contentWidth - 80
	SlowpokeButton.y = 340
	sceneGroup:insert(SlowpokeButton)
	
	local SlowbroButton = widget.newButton{
		label = "080          Slowbro",
		onEvent = handleSlowbroEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,.0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	SlowbroButton.x = display.contentWidth - 80
	SlowbroButton.y = 390
	sceneGroup:insert(SlowbroButton)
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