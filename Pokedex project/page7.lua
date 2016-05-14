--Pokedex application for app development in Lua
--Final project for CS 214
-- page7 for the pokedex
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
		composer.gotoScene("page8")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page6")
	end
end

--bulbasuarButton event handler
local function handleHypnoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("hypno")
	end
end

local function handleKrabbyEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("krabby")
	end
end

local function handleKinglerEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("kingler")
	end
end

--bulbasuarButton event handler
local function handleVoltorbEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("voltorb")
	end
end

local function handleElectrodeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("electrode")
	end
end

local function handleExeggcuteEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("exeggcute")
	end
end

local function handleexeggutorEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("exeggutor")
	end
end

local function handleCuboneEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("cubone")
	end
end

local function handleMarowakEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("marowak")
	end
end

local function handleHitmonleeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("hitmonlee")
	end
end

local function handleHitmonchanEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("hitmonchan")
	end
end

local function handleLickitungEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("lickitung")
	end
end

local function handleKoffingEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("koffing")
	end
end

local function handleWeezingEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("weezing")
	end	
end

local function handleRhyhornEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("rhyhorn")
	end
end

local function handleRhydonEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("rhydon")
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
	
	local HypnoButton = widget.newButton{
		label = "097            Hypno",
		onEvent = handleHypnoEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.0,.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	HypnoButton.x = 80
	HypnoButton.y = 40
	sceneGroup:insert(HypnoButton)
	
	local krabbyButton = widget.newButton{
		label = "098           Krabby",
		onEvent = handleKrabbyEvent,
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
	krabbyButton.x =  80
	krabbyButton.y = 90
	sceneGroup:insert(krabbyButton)
	
	local KinglerButton = widget.newButton{
		label = "099           Kingler",
		onEvent = handleKinglerEvent,
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
	KinglerButton.x =  80
	KinglerButton.y = 140
	sceneGroup:insert(KinglerButton)
	
	local VoltorbButton = widget.newButton{
		label = "100          Voltorb",
		onEvent = handleVoltorbEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,1,0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	VoltorbButton.x =  80
	VoltorbButton.y = 190
	sceneGroup:insert(VoltorbButton)
	
	local ElectrodeButton = widget.newButton{
		label = "101       Electrode",
		onEvent = handleElectrodeEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,1,0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	ElectrodeButton.x =  80
	ElectrodeButton.y = 240
	sceneGroup:insert(ElectrodeButton)
	
	local ExeggcuteButton = widget.newButton{
		label = "102      Exeggcute",
		onEvent = handleExeggcuteEvent,
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
	ExeggcuteButton.x = 80
	ExeggcuteButton.y = 290
	sceneGroup:insert(ExeggcuteButton)
	
	local ExeggutorButton = widget.newButton{
		label = "103       Exeggutor",
		onEvent = handleEkansEvent,
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
	ExeggutorButton.x = 80
	ExeggutorButton.y = 340
	sceneGroup:insert(ExeggutorButton)
	
	local CuboneButton = widget.newButton{
		label = "104          Cubone",
		onEvent = handleCuboneEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.8,.4,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	CuboneButton.x = 80
	CuboneButton.y = 390
	sceneGroup:insert(CuboneButton)
	
	local MarowakButton = widget.newButton{
		label = "105         Marowak",
		onEvent = handleMarowakEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.8,.4,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	MarowakButton.x = display.contentWidth - 80
	MarowakButton.y = 40
	sceneGroup:insert(MarowakButton)
	
	local HitmonleeButton = widget.newButton{
		label = "106       Hitmonlee",
		onEvent = handleHitmonleeEvent,
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
	HitmonleeButton.x = display.contentWidth - 80
	HitmonleeButton.y = 90
	sceneGroup:insert(HitmonleeButton)
	
	local HitmonchanButton = widget.newButton{
		label = "107    Hitmonchan",
		onEvent = handleHitmonchanEvent,
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
	HitmonchanButton.x = display.contentWidth - 80
	HitmonchanButton.y = 140
	sceneGroup:insert(HitmonchanButton)
	
	local LickitungButton = widget.newButton{
		label = "108        Lickitung",
		onEvent = handleLickitungEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.75,.75,.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	LickitungButton.x = display.contentWidth - 80
	LickitungButton.y = 190
	sceneGroup:insert(LickitungButton)
	
	local KoffingButton = widget.newButton{
		label = "109           Koffing",
		onEvent = handleKoffingEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.75,0,.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	KoffingButton.x = display.contentWidth - 80
	KoffingButton.y = 240
	sceneGroup:insert(KoffingButton)
	
	local WeezingButton = widget.newButton{
		label = "110         Weezing",
		onEvent = handleWeezingEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.75,0,.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	WeezingButton.x = display.contentWidth - 80
	WeezingButton.y = 290
	sceneGroup:insert(WeezingButton)
	
	local RhyhornButton = widget.newButton{
		label = "111        Rhyhorn",
		onEvent = handleRhyhornEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,0.8,.4,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	RhyhornButton.x = display.contentWidth - 80
	RhyhornButton.y = 340
	sceneGroup:insert(RhyhornButton)
	
	local RhydonButton = widget.newButton{
		label = "112         Rhydon",
		onEvent = handleRhydonEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,0.8,.4,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	RhydonButton.x = display.contentWidth - 80
	RhydonButton.y = 390
	sceneGroup:insert(RhydonButton)
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