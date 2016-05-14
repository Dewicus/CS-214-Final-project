--Pokedex application for app development in Lua
--Final project for CS 214
-- page4 for the pokedex
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
		composer.gotoScene("page5")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page3")
	end
end

--bulbasuarButton event handler
local function handleVenomothEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("venomoth")
	end
end

local function handleDiglettEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("diglett")
	end
end

local function handleDugtrioEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("dugtrio")
	end
end

--bulbasuarButton event handler
local function handleMeowthEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("meowth")
	end
end

local function handlePersianEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("persian")
	end
end

local function handlePsyduckEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("psyduck")
	end
end

local function handleGolduckEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("golduck")
	end
end

local function handleMankeyEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("mankey")
	end
end

local function handlePrimeapeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("primeape")
	end
end

local function handleGrowlitheEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("growlithe")
	end
end

local function handleArcanineEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("arcanine")
	end
end

local function handlePoliwagEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("poliwag")
	end
end

local function handlePoliwhirlEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("polywhirl")
	end
end

local function handlePoliwrathEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("poliwrath")
	end
end

local function handleAbraEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("abra")
	end
end

local function handleKadabraEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("kadabra")
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
	
	local VenomothButton = widget.newButton{
		label = "049       Venomoth",
		onEvent = handleVenomothEvent,
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
	VenomothButton.x = 80
	VenomothButton.y = 40
	sceneGroup:insert(VenomothButton)
	
	local DiglettButton = widget.newButton{
		label = "050             Diglett",
		onEvent = handleDiglettEvent,
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
	DiglettButton.x =  80
	DiglettButton.y = 90
	sceneGroup:insert(DiglettButton)
	
	local DugtrioButton = widget.newButton{
		label = "051            Dugtrio",
		onEvent = handleDugtrioEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.8,0.4,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	DugtrioButton.x =  80
	DugtrioButton.y = 140
	sceneGroup:insert(DugtrioButton)
	
	local MeowthButton = widget.newButton{
		label = "052          Meowth",
		onEvent = handleMeowthEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.85,0.85,0.85,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	MeowthButton.x =  80
	MeowthButton.y = 190
	sceneGroup:insert(MeowthButton)
	
	local PersianButton = widget.newButton{
		label = "053          Persian",
		onEvent = handlePersianEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.85,.85,0.85,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	PersianButton.x =  80
	PersianButton.y = 240
	sceneGroup:insert(PersianButton)
	
	local PsyduckButton = widget.newButton{
		label = "054         Psyduck",
		onEvent = handlePsyduckEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,0.0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	PsyduckButton.x = 80
	PsyduckButton.y = 290
	sceneGroup:insert(PsyduckButton)
	
	local GolduckButton = widget.newButton{
		label = "055         Golduck",
		onEvent = handleGolduckEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	GolduckButton.x = 80
	GolduckButton.y = 340
	sceneGroup:insert(GolduckButton)
	
	local MankeyButton = widget.newButton{
		label = "056          Mankey",
		onEvent = handleMankeyEvent,
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
	MankeyButton.x = 80
	MankeyButton.y = 390
	sceneGroup:insert(MankeyButton)
	
	local PrimeapeButton = widget.newButton{
		label = "057        Primeape",
		onEvent = handlePrimeapeEvent,
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
	PrimeapeButton.x = display.contentWidth - 80
	PrimeapeButton.y = 40
	sceneGroup:insert(PrimeapeButton)
	
	local GrowlitheButton = widget.newButton{
		label = "058        Growlithe",
		onEvent = handleGrowlitheEvent,
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
	GrowlitheButton.x = display.contentWidth - 80
	GrowlitheButton.y = 90
	sceneGroup:insert(GrowlitheButton)
	
	local ArcanineButton = widget.newButton{
		label = "059        Arcanine",
		onEvent = handleArcanineEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,.0,.0,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	ArcanineButton.x = display.contentWidth - 80
	ArcanineButton.y = 140
	sceneGroup:insert(ArcanineButton)
	
	local PoliwagButton = widget.newButton{
		label = "060          Poliwag",
		onEvent = handlePoliwagEvent,
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
	PoliwagButton.x = display.contentWidth - 80
	PoliwagButton.y = 190
	sceneGroup:insert(PoliwagButton)
	
	local PoliwhirlButton = widget.newButton{
		label = "061         Poliwhirl",
		onEvent = handlePoliwhirlEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	PoliwhirlButton.x = display.contentWidth - 80
	PoliwhirlButton.y = 240
	sceneGroup:insert(PoliwhirlButton)
	
	local PoliwrathButton = widget.newButton{
		label = "062        Poliwrath",
		onEvent = handlePoliwrathEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	PoliwrathButton.x = display.contentWidth - 80
	PoliwrathButton.y = 290
	sceneGroup:insert(PoliwrathButton)
	
	local AbraButton = widget.newButton{
		label = "063              Abra",
		onEvent = handleAbraEvent,
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
	AbraButton.x = display.contentWidth - 80
	AbraButton.y = 340
	sceneGroup:insert(AbraButton)
	
	local KadabraButton = widget.newButton{
		label = "064        Kadabra",
		onEvent = handleKadabraEvent,
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
	KadabraButton.x = display.contentWidth - 80
	KadabraButton.y = 390
	sceneGroup:insert(KadabraButton)
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