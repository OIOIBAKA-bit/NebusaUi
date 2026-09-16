--!strict
-- Init.luau

local Library = {}
Library.__index = Library

local MainStuff = script:WaitForChild("Main Stuff")
local Window = require(MainStuff:WaitForChild("Window"))
local ThemeManager = require(MainStuff:WaitForChild("ThemeManager"))

type WindowOptions = {
    Title: string?,
}

function Library.CreateWindow(options: WindowOptions?)
    options = options or {}
    local windowInstance = Window.new(options.Title or "UI Library")
    return windowInstance
end

function Library.SetTheme(themeName: string)
    ThemeManager.ApplyTheme(themeName)
end

return Library
