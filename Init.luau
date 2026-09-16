--!strict
-- Init.luau (Main Entry Point)

local Library = {}
Library.__index = Library


local MainStuff = script:WaitForChild("Main Stuff")
local Window = require(MainStuff:WaitForChild("Window"))
local ThemeManager = require(MainStuff:WaitForChild("ThemeManager"))


type WindowOptions = {
    Title: string?,
    Theme: string?,
}

function Library.CreateWindow(options: WindowOptions?)
    options = options or {}
    local windowTitle = options.Title or "My UI Library"
    
    
    local newWindow = Window.new(windowTitle)
    return newWindow
end

function Library.SetTheme(themeName: string)
    ThemeManager.ApplyTheme(themeName)
end


return Library
