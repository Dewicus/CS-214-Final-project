--Pokedex application for app development in Lua
--Final project for CS 214
-- page10 for the pokedex
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

--go to the previous page
local function handlepreviousPageEvent (event)
	if  ( "ended" == event.phase) then 
		composer.gotoScene("page9")
	end
end

-----------------------------------------
local function handleRattataEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("rattata")
	end
end

local function handleZapdosEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("zapdos")
	end
end

local function handleMoltresEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("moltres")
	end
end

--bulbasuarButton event handler
local function handleDratiniEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("dratini")
	end
end

local function handleDragonairEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("dragonair")
	end
end

local function handleDragoniteEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("dragonite")
	end
end

local function handleMewtwoEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("mewtwo")
	end
end

local function handleMewEvent(event)
	if ("ended" == event.phase) then 
		composer.gotoScene("mew")
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

-------------------------------------------------------------------------------------
	-- Position the Button
	previousPage.x = 80
	previousPage.y = display.contentHeight - 25
	sceneGroup:insert(previousPage)
	
	local ZapdosButton = widget.newButton{
		label = "145           Zapdos",
		onEvent = handleZapdosEvent,
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
	ZapdosButton.x = 80
	ZapdosButton.y = 40
	sceneGroup:insert(ZapdosButton)
	
	local MoltresButton = widget.newButton{
		label = "146           Moltres",
		onEvent = handleMoltresEvent,
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
	MoltresButton.x =  80
	MoltresButton.y = 90
	sceneGroup:insert(MoltresButton)
	
	local DratiniButton = widget.newButton{
		label = "147            Dratini",
		onEvent = handleDratiniEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,.5,0.5,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	DratiniButton.x =  80
	DratiniButton.y = 140
	sceneGroup:insert(DratiniButton)
	
	local DragonairButton = widget.newButton{
		label = "148       Dragonair",
		onEvent = handleDragonairEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,.5,.5,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	DragonairButton.x =  80
	DragonairButton.y = 190
	sceneGroup:insert(DragonairButton)
	
	local DragoniteButton = widget.newButton{
		label = "149        Dragonite",
		onEvent = handleDragoniteEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={0,.5,0.5,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	DragoniteButton.x =  80
	DragoniteButton.y = 240
	sceneGroup:insert(DragoniteButton)
	
	local MewtwoButton = widget.newButton{
		label = "150           Mewtwo",
		onEvent = handleMewtwoEvent,
		emboss = true,
		-- Properties for a rounded rectangle button
		shape = "roundedRect",
		width = 150,
		height = 40,
		cornerRadius = 10,
		fillColor = { default={1,00,0.75,1}, over={1,0.1,0.7,0.4} },
		strokeColor = { default={0,0,0,1}, over={0.8,0.8,1,1} },
		labelColor = { default={ 0, 0, 0 }, over={ 0, 0, 0 } },
		strokeWidth = 4
	}
	MewtwoButton.x = 80
	MewtwoButton.y = 290
	sceneGroup:insert(MewtwoButton)
	
	local MewButton = widget.newButton{
		label = "151                Mew",
		onEvent = handleMewEvent,
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
	MewButton.x = 80
	MewButton.y = 340
	sceneGroup:insert(MewButton)
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