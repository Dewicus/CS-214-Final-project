--Pokedex application for app development in Lua
--Final project for CS 214
-- page6 for the pokedex
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
		composer.gotoScene("page7")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page5")
	end
end

--bulbasuarButton event handler
local function handleMagnemiteEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("magnemite")
	end
end

local function handleMagnetonEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("magneton")
	end
end

local function handleFarfetchdEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("farfetch'd")
	end
end

--bulbasuarButton event handler
local function handleDoduoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("doduo")
	end
end

local function handleDodrioEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("dodrio")
	end
end

local function handleSeelEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("seel")
	end
end

local function handleDewgongEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("dewgong")
	end
end

local function handleGrimerEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("grimer")
	end
end

local function handleMukEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("muk")
	end
end

local function handleShellderEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("shellder")
	end
end

local function handleCloysterEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("cloyster")
	end
end

local function handleGastlyEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("gastly")
	end
end

local function handleHaunterEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("haunter")
	end
end

local function handleGengarEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("gengar")
	end
end

local function handleOnixEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("onix")
	end
end

local function handleDrowzeeEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("drowzee")
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
	
	local magnemiteButton = widget.newButton{
		label = "081     Magnemite",
		onEvent = handleMagnemiteEvent,
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
	magnemiteButton.x = 80
	magnemiteButton.y = 40
	sceneGroup:insert(magnemiteButton)
	
	local MagnetonButton = widget.newButton{
		label = "082       Magneton",
		onEvent = handleMagnetonEvent,
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
	MagnetonButton.x =  80
	MagnetonButton.y = 90
	sceneGroup:insert(MagnetonButton)
	
	local FarfetchdButton = widget.newButton{
		label = "083        Farfech'd",
		onEvent = handleFarfetchdEvent,
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
	FarfetchdButton.x =  80
	FarfetchdButton.y = 140
	sceneGroup:insert(FarfetchdButton)
	
	local DoduoButton = widget.newButton{
		label = "084             Doduo",
		onEvent = handleDoduoEvent,
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
	DoduoButton.x =  80
	DoduoButton.y = 190
	sceneGroup:insert(DoduoButton)
	
	local DodrioButton = widget.newButton{
		label = "085            Dodrio",
		onEvent = handleDodrioEvent,
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
	DodrioButton.x =  80
	DodrioButton.y = 240
	sceneGroup:insert(DodrioButton)
	
	local SeelButton = widget.newButton{
		label = "086               Seel",
		onEvent = handleSeelEvent,
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
	SeelButton.x = 80
	SeelButton.y = 290
	sceneGroup:insert(SeelButton)
	
	local DewgongButton = widget.newButton{
		label = "087       Dewgong",
		onEvent = handleDewgongEvent,
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
	DewgongButton.x = 80
	DewgongButton.y = 340
	sceneGroup:insert(DewgongButton)
	
	local GrimerButton = widget.newButton{
		label = "088           Grimer",
		onEvent = handleGrimerEvent,
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
	GrimerButton.x = 80
	GrimerButton.y = 390
	sceneGroup:insert(GrimerButton)
	
	local MukButton = widget.newButton{
		label = "089                 Muk",
		onEvent = handleMukEvent,
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
	MukButton.x = display.contentWidth - 80
	MukButton.y = 40
	sceneGroup:insert(MukButton)
	
	local ShellderButton = widget.newButton{
		label = "090          Shellder",
		onEvent = handleShellderEvent,
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
	ShellderButton.x = display.contentWidth - 80
	ShellderButton.y = 90
	sceneGroup:insert(ShellderButton)
	
	local CloysterButton = widget.newButton{
		label = "091          Cloyster",
		onEvent = handleCloysterEvent,
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
	CloysterButton.x = display.contentWidth - 80
	CloysterButton.y = 140
	sceneGroup:insert(CloysterButton)
	
	local GastlyButton = widget.newButton{
		label = "092             Gastly",
		onEvent = handleGastlyEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.4,0,.8,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	GastlyButton.x = display.contentWidth - 80
	GastlyButton.y = 190
	sceneGroup:insert(GastlyButton)
	
	local HaunterButton = widget.newButton{
		label = "093          Haunter",
		onEvent = handleHaunterEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.4,0,.8,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	HaunterButton.x = display.contentWidth - 80
	HaunterButton.y = 240
	sceneGroup:insert(HaunterButton)
	
	local GengarButton = widget.newButton{
		label = "094           Gengar",
		onEvent = handleGengarEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={.4,0,.8,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	GengarButton.x = display.contentWidth - 80
	GengarButton.y = 290
	sceneGroup:insert(GengarButton)
	
	local OnixButton = widget.newButton{
		label = "095               Onix",
		onEvent = handleOnixEvent,
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
	OnixButton.x = display.contentWidth - 80
	OnixButton.y = 340
	sceneGroup:insert(OnixButton)
	
	local DrowzeeButton = widget.newButton{
		label = "096        Drowzee",
		onEvent = handleDrowzeeEvent,
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
	DrowzeeButton.x = display.contentWidth - 80
	DrowzeeButton.y = 390
	sceneGroup:insert(DrowzeeButton)
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