--Pokedex application for app development in Lua
--Final project for CS 214
-- page8 for the pokedex
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
		composer.gotoScene("page9")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page7")
	end
end

----------------------------------------
local function handleChanseyEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("chansey")
	end
end

local function handleTangelaEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("tangela")
	end
end

local function handleKangaskhanEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("kangaskhan")
	end
end

--bulbasuarButton event handler
local function handleHorseaEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("horsea")
	end
end

local function handleSeadraEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("seadra")
	end
end

local function handleGoldeenEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("goldeen")
	end
end

local function handleSeakingEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("seaking")
	end
end

local function handleStaryuEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("staryu")
	end
end

local function handleStarmieEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("starmie")
	end
end

local function handleMrMimeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("mr. mime")
	end
end

local function handleScytherEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("scyther")
	end
end

local function handleJynxEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("jynx")
	end
end

local function handleElectabuzzEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("electabuzz")
	end
end

local function handleMagmarEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("magmar")
	end
end


local function handlePinsirEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("pinsir")
	end
end

local function handleTaurosEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("tauros")
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
	
	
-----------------------------------------------------------------------------------------
	local ChanseyButton = widget.newButton{
		label = "113         Chansey",
		onEvent = handleChanseyEvent,
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
	ChanseyButton.x = 80
	ChanseyButton.y = 40
	sceneGroup:insert(ChanseyButton)
	
	local TangelaButton = widget.newButton{
		label = "114          Tangela",
		onEvent = handleTangelaEvent,
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
	TangelaButton.x =  80
	TangelaButton.y = 90
	sceneGroup:insert(TangelaButton)
	
	local KangaskhanButton = widget.newButton{
		label = "115   Kangaskhan",
		onEvent = handleKangaskhanEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0.85,.85,0.85,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	KangaskhanButton.x =  80
	KangaskhanButton.y = 140
	sceneGroup:insert(KangaskhanButton)
	
	local HorseaButton = widget.newButton{
		label = "116           Horsea",
		onEvent = handleHorseaEvent,
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
	HorseaButton.x =  80
	HorseaButton.y = 190
	sceneGroup:insert(HorseaButton)
	
	local SeadraButton = widget.newButton{
		label = "117           Seadra",
		onEvent = handleSeadraEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.0,.0,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	SeadraButton.x =  80
	SeadraButton.y = 240
	sceneGroup:insert(SeadraButton)
	
	local GoldeenButton = widget.newButton{
		label = "118         Goldeen",
		onEvent = handleGoldeenEvent,
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
	GoldeenButton.x = 80
	GoldeenButton.y = 290
	sceneGroup:insert(GoldeenButton)
	
	local SeakingButton = widget.newButton{
		label = "119          Seaking",
		onEvent = handleSeakingEvent,
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
	SeakingButton.x = 80
	SeakingButton.y = 340
	sceneGroup:insert(SeakingButton)
	
	local StaryuButton = widget.newButton{
		label = "120            Staryu",
		onEvent = handleStaryuEvent,
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
	StaryuButton.x = 80
	StaryuButton.y = 390
	sceneGroup:insert(StaryuButton)
	
	local StarmieButton = widget.newButton{
		label = "121           Starmie",
		onEvent = handleStarmieEvent,
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
	StarmieButton.x = display.contentWidth - 80
	StarmieButton.y = 40
	sceneGroup:insert(StarmieButton)
	
	local MrMimeButton = widget.newButton{
		label = "122        Mr. Mime",
		onEvent = handleMrMimeEvent,
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
	MrMimeButton.x = display.contentWidth - 80
	MrMimeButton.y = 90
	sceneGroup:insert(MrMimeButton)
	
	local ScytherButton = widget.newButton{
		label = "123           Scyther",
		onEvent = handleScytherEvent,
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
	ScytherButton.x = display.contentWidth - 80
	ScytherButton.y = 140
	sceneGroup:insert(ScytherButton)
	
	local JynxButton = widget.newButton{
		label = "124                Jynx",
		onEvent = handleJynxEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.6,.6,1,1}, over={1,0.1,0.7,0.4} },
		fillColor = { default={.6,.6,1,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	JynxButton.x = display.contentWidth - 80
	JynxButton.y = 190
	sceneGroup:insert(JynxButton)
	
	local ElectabuzzButton = widget.newButton{
		label = "125      Electabuzz",
		onEvent = handleElectabuzzEvent,
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
	ElectabuzzButton.x = display.contentWidth - 80
	ElectabuzzButton.y = 240
	sceneGroup:insert(ElectabuzzButton)
	
	local MagmarButton = widget.newButton{
		label = "126          Magmar",
		onEvent = handleMagmarEvent,
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
	MagmarButton.x = display.contentWidth - 80
	MagmarButton.y = 290
	sceneGroup:insert(MagmarButton)
	
	local PinsirButton = widget.newButton{
		label = "127              Pinsir",
		onEvent = handlePinsirEvent,
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
	PinsirButton.x = display.contentWidth - 80
	PinsirButton.y = 340
	sceneGroup:insert(PinsirButton)
	
	local TaurosButton = widget.newButton{
		label = "128            Tauros",
		onEvent = TaurosButton,
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
	TaurosButton.x = display.contentWidth - 80
	TaurosButton.y = 390
	sceneGroup:insert(TaurosButton)
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