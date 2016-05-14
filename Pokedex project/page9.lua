--Pokedex application for app development in Lua
--Final project for CS 214
-- page9 for the pokedex
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
		composer.gotoScene("page10")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page8")
	end
end

----------------------------------------
local function handleMagikarpEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("magikarp")
	end
end

local function handleGyaradosEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("gyarados")
	end
end

local function handleLaprasEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("lapras")
	end
end

--bulbasuarButton event handler
local function handleDittoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("ditto")
	end
end

local function handleEeveeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("eevee")
	end
end

local function handleVaporeonEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("vaporeon")
	end
end

local function handleJolteonEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("jolteon")
	end
end

local function handleFlareonEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("flareon")
	end
end

local function handlePorygonEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("porygon")
	end
end

local function handleOmanyteEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("omanyte")
	end
end

local function handleOmastarEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("omastar")
	end
end

local function handleKabutoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("kabuto")
	end
end

local function handleKabutopsEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("kabutops")
	end
end

local function handleAerodactylEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("aerodactyl")
	end
end

local function handleSnorlaxEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("snorlax")
	end
end


local function handleArticunoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("articuno")
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
	
---------------------------------------------------------------------------------------
	local MagikarpButton = widget.newButton{
		label = "129         Magikarp",
		onEvent = handleMagikarpEvent,
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
	MagikarpButton.x = 80
	MagikarpButton.y = 40
	sceneGroup:insert(MagikarpButton)
	
	local GyaradosButton = widget.newButton{
		label = "130        Gyarados",
		onEvent = handleGyaradosEvent,
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
	GyaradosButton.x =  80
	GyaradosButton.y = 90
	sceneGroup:insert(GyaradosButton)
	
	local LaprasButton = widget.newButton{
		label = "131            Lapras",
		onEvent = handleLaprasEvent,
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
	LaprasButton.x =  80
	LaprasButton.y = 140
	sceneGroup:insert(LaprasButton)
	
	local DittoButton = widget.newButton{
		label = "132                Ditto",
		onEvent = handleDittoEvent,
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
	DittoButton.x =  80
	DittoButton.y = 190
	sceneGroup:insert(DittoButton)
	
	local EeveeButton = widget.newButton{
		label = "133             Eevee",
		onEvent = handleEeveeEvent,
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
	EeveeButton.x =  80
	EeveeButton.y = 240
	sceneGroup:insert(EeveeButton)
	
	local VaporeonButton = widget.newButton{
		label = "134       Vaporeon",
		onEvent = handleVaporeonEvent,
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
	VaporeonButton.x = 80
	VaporeonButton.y = 290
	sceneGroup:insert(VaporeonButton)
	
	local JolteonButton = widget.newButton{
		label = "135            Jolteon",
		onEvent = handleJolteonEvent,
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
	JolteonButton.x = 80
	JolteonButton.y = 340
	sceneGroup:insert(JolteonButton)
	
	local FlareonButton = widget.newButton{
		label = "136            Flareon",
		onEvent = handleFlareonEvent,
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
	FlareonButton.x = 80
	FlareonButton.y = 390
	sceneGroup:insert(FlareonButton)
	
	local PorygonButton = widget.newButton{
		label = "137          Porygon",
		onEvent = handlePorygonEvent,
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
	PorygonButton.x = display.contentWidth - 80
	PorygonButton.y = 40
	sceneGroup:insert(PorygonButton)
	
	local OmanyteButton = widget.newButton{
		label = "138         Omanyte",
		onEvent = handleOmanyteEvent,
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
	OmanyteButton.x = display.contentWidth - 80
	OmanyteButton.y = 90
	sceneGroup:insert(OmanyteButton)
	
	local OmastarButton = widget.newButton{
		label = "139          Omastar",
		onEvent = handleOmastar,
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
	OmastarButton.x = display.contentWidth - 80
	OmastarButton.y = 140
	sceneGroup:insert(OmastarButton)
	
	local KabutoButton = widget.newButton{
		label = "140            Kabuto",
		onEvent = handleKabutoEvent,
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
	KabutoButton.x = display.contentWidth - 80
	KabutoButton.y = 190
	sceneGroup:insert(KabutoButton)
	
	local KabutopsButton = widget.newButton{
		label = "141        Kabutops",
		onEvent = handleKabutopsEvent,
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
	KabutopsButton.x = display.contentWidth - 80
	KabutopsButton.y = 240
	sceneGroup:insert(KabutopsButton)
	
	local AerodactylButton = widget.newButton{
		label = "142      Aerodactyl",
		onEvent = handleAerodactylEvent,
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
	AerodactylButton.x = display.contentWidth - 80
	AerodactylButton.y = 290
	sceneGroup:insert(AerodactylButton)
	
	local SnorlaxButton = widget.newButton{
		label = "143           Snorlax",
		onEvent = handleSnorlaxEvent,
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
	SnorlaxButton.x = display.contentWidth - 80
	SnorlaxButton.y = 340
	sceneGroup:insert(SnorlaxButton)
	
	local ArticunoButton = widget.newButton{
		label = "144          Articuno",
		onEvent = handleArticunoEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.6,0.6,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	ArticunoButton.x = display.contentWidth - 80
	ArticunoButton.y = 390
	sceneGroup:insert(ArticunoButton)
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