---@class AdaptiveContainer
---@field type string
---@field items table
---@field selectAction table
---@field style string
---@field verticalContentAlignment strin
---@field bleed boolean
---@field backgroundImage string
---@field minHeight string
AdaptiveContainer = setmetatable({}, AdaptiveContainer)

AdaptiveContainer.__index = AdaptiveContainer

function AdaptiveContainer.new(items, selectAction)
	local _AdaptiveContainer = {
		type = AdaptiveElementType.Container,
		items = items or {},
		selectAction = selectAction or nil,
		style = AdaptiveContainerStyle.Default,
		verticalContentAlignment = AdaptiveVerticalContentAlign.Top,
		bleed = false,
		backgroundImage = nil,
		minHeight = nil
	}

	return setmetatable(_AdaptiveContainer, AdaptiveContainer)
end

function AdaptiveContainer:AddElement(element)
	table.insert(self.items, element)
end
