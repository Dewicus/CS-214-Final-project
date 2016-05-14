--Pokedex application for app development in Lua
--Final project for CS 214
-- page3 for the pokedex
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
		composer.gotoScene("page4")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page2")
	end
end

--bulbasuarButton event handler
local function handlenidorinoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("nidorino")
	end
end

local function handleNidokingEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("nidoking")
	end
end

local function handleClefairyEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("clefairy")
	end
end

--bulbasuarButton event handler
local function handleClefableEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("clefable")
	end
end

local function handleVulpixEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("vulpix")
	end
end

local function handleNinetailsEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("ninetails")
	end
end

local function handleJigglypuffEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("jigglypuff")
	end
end

local function handleWigglytuffEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("wigglytuff")
	end
end

local function handleZubatEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("zubat")
	end
end

local function handleGolbatEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("golbat")
	end
end

local function handleOddishEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("oddish")
	end
end

local function handleGloomEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("gloom")
	end
end

local function handleVileplumeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("vileplume")
	end
end

local function handleParasEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("paras")
	end
end

local function handleParasectEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("parasect")
	end
end

local function handleVenonatEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("venonat")
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
	
	local NidorinoButton = widget.newButton{
		label = "033         Nidorino",
		onEvent = handleNidorinoEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.75,.0,.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	NidorinoButton.x = 80
	NidorinoButton.y = 40
	sceneGroup:insert(NidorinoButton)
	
	local NidokingButton = widget.newButton{
		label = "034         Nidoking",
		onEvent = handleNidokingEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.75,.0,.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	NidokingButton.x =  80
	NidokingButton.y = 90
	sceneGroup:insert(NidokingButton)
	
	local ClefairyButton = widget.newButton{
		label = "035           Clefairy",
		onEvent = handleClefairyEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.6,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	ClefairyButton.x =  80
	ClefairyButton.y = 140
	sceneGroup:insert(ClefairyButton)
	
	local ClefableButton = widget.newButton{
		label = "036          Clefable",
		onEvent = handleClefableEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.6,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	ClefableButton.x =  80
	ClefableButton.y = 190
	sceneGroup:insert(ClefableButton)
	
	local VulpixButton = widget.newButton{
		label = "037            Vulpix",
		onEvent = handleSpearowEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.0,0.0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	VulpixButton.x =  80
	VulpixButton.y = 240
	sceneGroup:insert(VulpixButton)
	
	local NinetailsButton = widget.newButton{
		label = "038         Ninetails",
		onEvent = handleFearowEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,0.0,0.0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	NinetailsButton.x = 80
	NinetailsButton.y = 290
	sceneGroup:insert(NinetailsButton)
	
	local JigglypuffButton = widget.newButton{
		label = "039        Jigglypuff",
		onEvent = handleJigglypuffEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.85,.850,.85,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	JigglypuffButton.x = 80
	JigglypuffButton.y = 340
	sceneGroup:insert(JigglypuffButton)
	
	local WigglytuffButton = widget.newButton{
		label = "040       Wigglytuff",
		onEvent = handleWigglytuffEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.85,0.85,.85,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	WigglytuffButton.x = 80
	WigglytuffButton.y = 390
	sceneGroup:insert(WigglytuffButton)
	
	local ZubatButton = widget.newButton{
		label = "041              Zubat",
		onEvent = handleZubatEvent,
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
	ZubatButton.x = display.contentWidth - 80
	ZubatButton.y = 40
	sceneGroup:insert(ZubatButton)
	
	local GolbatButton = widget.newButton{
		label = "042             Golbat",
		onEvent = handleGolbatEvent,
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
	GolbatButton.x = display.contentWidth - 80
	GolbatButton.y = 90
	sceneGroup:insert(GolbatButton)
	
	local OddishButton = widget.newButton{
		label = "043            Oddish",
		onEvent = handleOddishEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,1,.0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	OddishButton.x = display.contentWidth - 80
	OddishButton.y = 140
	sceneGroup:insert(OddishButton)
	
	local GloomButton = widget.newButton{
		label = "044            Gloom",
		onEvent = handleGloomEvent,
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
	GloomButton.x = display.contentWidth - 80
	GloomButton.y = 190
	sceneGroup:insert(GloomButton)
	
	local VileplumeButton = widget.newButton{
		label = "045       Vileplume",
		onEvent = handleVileplumeEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,1,.0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	VileplumeButton.x = display.contentWidth - 80
	VileplumeButton.y = 240
	sceneGroup:insert(VileplumeButton)
	
	local ParasButton = widget.newButton{
		label = "046             Paras",
		onEvent = handleParasEvent,
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
	ParasButton.x = display.contentWidth - 80
	ParasButton.y = 290
	sceneGroup:insert(ParasButton)
	
	local ParasectButton = widget.newButton{
		label = "047        Parasect",
		onEvent = handleParasectEvent,
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
	ParasectButton.x = display.contentWidth - 80
	ParasectButton.y = 340
	sceneGroup:insert(ParasectButton)
	
	local VenonatButton = widget.newButton{
		label = "048         Venonat",
		onEvent = handleVenonatEvent,
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
	VenonatButton.x = display.contentWidth - 80
	VenonatButton.y = 390
	sceneGroup:insert(VenonatButton)
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