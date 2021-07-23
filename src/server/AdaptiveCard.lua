---@class AdaptiveCard
---@field type string
---@field version string
---@field $schema string
AdaptiveCard = setmetatable({}, AdaptiveCard)

AdaptiveCard.__call = function()
	return "AdaptiveCard"
end

AdaptiveCard.__index = AdaptiveCard

function AdaptiveCard.new()
	local _AdaptiveCard = {
		type = "AdaptiveCard",
		version = "1.0",
		["$schema"] = AdaptiveSchema.Standard,
		body = {}
	}

	return setmetatable(_AdaptiveCard, AdaptiveCard)
end

function AdaptiveCard:AddElement(element)
	table.insert(self.body, element)
end

function AdaptiveCard:JSON()
	return json.encode(self)
end
