local _W = display.contentWidth
local _H = display.contentHeight

local movieclip = require("movieclip")

local image = {}
for i = 1, 8, 1 do
	table.insert( image, "spiner" .. i .. ".png" )
end

local anim = movieclip.newAnim( image )
anim.x = _W/2 ; anim.y = _H/2

anim:play()
--anim:reverse()

--[[
local function onTouch(event)
	if(event.phase == "began")then
		--anim:stopAtFrame(1)
		--anim:stopAtFrame(anim:currentFrame() )
	elseif(event.phase == "ended")then
		--anim:playAtFrame(12)
		--anim:playAtFrame(anim:currentFrame() )
	end
end

anim:addEventListener("touch", onTouch)
--]]