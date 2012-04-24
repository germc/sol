-----------------------------------------------------------------------------------------
--
-- badges.lua
--
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
function addDefenceBadge(planet)
	-- remove old badge
	if planet.badgeDefence then
		planet.badgeDefence:removeSelf()
	end

	-- add badge
	local badge = display.newImageRect("ui/badges/defence"..planet.res.defence..".png", 25, 25)
	badge.x, badge.y = planet.x + planet.r, planet.y - planet.r
	group:insert(badge)
	planet.badgeDefence = badge
end