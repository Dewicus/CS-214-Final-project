--Pokedex application for app development in Lua
--Final project for CS 214
-- page2 for the pokedex
--Taught by: Professor Neleson
--Created by: Cameron Dewey
--Started: Spring of 2016. On 03 - 17 - 2016
-- Completed: 05 - 05 - 2016

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
		composer.gotoScene("page3")
		
    end
end
--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page1")
	end
end

--bulbasuarButton event handler
local function handleRattataEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("rattata")
	end
end

local function handleRaticateEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("raticate")
	end
end

local function handleSpearowEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("spearow")
	end
end

--bulbasuarButton event handler
local function handleFearowEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("fearow")
	end
end

local function handleEkansEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("ekans")
	end
end

local function handleArbokEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("arbok")
	end
end

local function handlePikachuEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("pikachu")
	end
end

local function handleRaichuEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("raichu")
	end
end

local function handleSandshrewEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("sandshrew")
	end
end

local function handleSandslashEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("sandslash")
	end
end

local function handleNidoranfEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("nidoranf")
	end
end

local function handleNidorinaEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("nidorina")
	end
end

local function handleNidoqueenEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("nidoqueen")
	end
end

local function handleNidoranmEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("nidoranm")
	end
end

local function handlePidgeottoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("pidgeotto")
	end
end

local function handlePidgeotEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("pidgeot")
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
	
	local pidgeottoButton = widget.newButton{
		label = "017        Pidgeotto",
		onEvent = handlePidgeottoEvent,
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
	pidgeottoButton.x = 80
	pidgeottoButton.y = 40
	sceneGroup:insert(pidgeottoButton)
	
	local PidgeotButton = widget.newButton{
		label = "018           Pidgeot",
		onEvent = handlePidgeotEvent,
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
	PidgeotButton.x =  80
	PidgeotButton.y = 90
	sceneGroup:insert(PidgeotButton)
	
	local RattataButton = widget.newButton{
		label = "019           Rattata",
		onEvent = handleRattataEvent,
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
	RattataButton.x =  80
	RattataButton.y = 140
	sceneGroup:insert(RattataButton)
	
	local RaticateButton = widget.newButton{
		label = "020         Raticate",
		onEvent = handleRaticateEvent,
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
	RaticateButton.x =  80
	RaticateButton.y = 190
	sceneGroup:insert(RaticateButton)
	
	local SpearowButton = widget.newButton{
		label = "021        Spearow",
		onEvent = handleSpearowEvent,
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
	SpearowButton.x =  80
	SpearowButton.y = 240
	sceneGroup:insert(SpearowButton)
	
	local FearowButton = widget.newButton{
		label = "022         Fearow",
		onEvent = handleFearowEvent,
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
	FearowButton.x = 80
	FearowButton.y = 290
	sceneGroup:insert(FearowButton)
	
	local EkansButton = widget.newButton{
		label = "023            Ekans",
		onEvent = handleEkansEvent,
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
	EkansButton.x = 80
	EkansButton.y = 340
	sceneGroup:insert(EkansButton)
	
	local ArbokButton = widget.newButton{
		label = "024            Arbok",
		onEvent = handleArbokEvent,
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
	ArbokButton.x = 80
	ArbokButton.y = 390
	sceneGroup:insert(ArbokButton)
	
	local PikachuButton = widget.newButton{
		label = "025          Pikachu",
		onEvent = handlePikachuEvent,
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
	PikachuButton.x = display.contentWidth - 80
	PikachuButton.y = 40
	sceneGroup:insert(PikachuButton)
	
	local RaichuButton = widget.newButton{
		label = "026            Raichu",
		onEvent = handleRaichuEvent,
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
	RaichuButton.x = display.contentWidth - 80
	RaichuButton.y = 90
	sceneGroup:insert(RaichuButton)
	
	local SandshrewButton = widget.newButton{
		label = "027      Sandshrew",
		onEvent = handleSandshrewEvent,
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
	SandshrewButton.x = display.contentWidth - 80
	SandshrewButton.y = 140
	sceneGroup:insert(SandshrewButton)
	
	local SandslashButton = widget.newButton{
		label = "028       Sandslash",
		onEvent = handleSandslashEvent,
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
	SandslashButton.x = display.contentWidth - 80
	SandslashButton.y = 190
	sceneGroup:insert(SandslashButton)
	
	local NidoranfButton = widget.newButton{
		label = "029        Nidoran♀",
		onEvent = handleNidoranfEvent,
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
	NidoranfButton.x = display.contentWidth - 80
	NidoranfButton.y = 240
	sceneGroup:insert(NidoranfButton)
	
	local NidorinaButton = widget.newButton{
		label = "030          Nidorina",
		onEvent = handleNidorinaEvent,
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
	NidorinaButton.x = display.contentWidth - 80
	NidorinaButton.y = 290
	sceneGroup:insert(NidorinaButton)
	
	local NidoqueenButton = widget.newButton{
		label = "031      Nidoqueen",
		onEvent = handleNidoqueenEvent,
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
	NidoqueenButton.x = display.contentWidth - 80
	NidoqueenButton.y = 340
	sceneGroup:insert(NidoqueenButton)
	
	local NidoranmButton = widget.newButton{
		label = "032        Nidoran♂",
		onEvent = handleNidoranmEvent,
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
	NidoranmButton.x = display.contentWidth - 80
	NidoranmButton.y = 390
	sceneGroup:insert(NidoranmButton)
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