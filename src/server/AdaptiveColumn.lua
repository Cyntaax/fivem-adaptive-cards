---@class AdaptiveColumn
---@field items table
---@field bleed boolean
---@field minHeight string
---@field separator boolean
---@field spacing string
---@field selectAction table
---@field style string
---@field verticalContentAlignment string
---@field width string
AdaptiveColumn = setmetatable({}, AdaptiveColumn)

AdaptiveColumn.__index = AdaptiveColumn

function AdaptiveColumn.new(items)
	local _AdaptiveColumn = {
		type = AdaptiveElementType.Column,
		items = items or {},
		bleed = false,
		minHeight = nil,
		separator = false,
		spacing = AdaptiveElementSpacing.Default,
		selectAction = nil,
		style = AdaptiveContainerStyle.Default,
		verticalContentAlignment = AdaptiveVerticalContentAlign.Top,
		width = "auto"
	}

	return setmetatable(_AdaptiveColumn, AdaptiveColumn)
end

function AdaptiveColumn:AddItem(element)
	table.insert(self.items, element)
end
