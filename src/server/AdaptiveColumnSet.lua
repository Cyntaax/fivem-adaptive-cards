---@class AdaptiveColumnSet
---@field type string
---@field columns AdaptiveColumn[]
---@field selectAction table
AdaptiveColumnSet = setmetatable({}, AdaptiveColumnSet)

AdaptiveColumnSet.__index = AdaptiveColumnSet

function AdaptiveColumnSet.new(columns, selectAction)
	local _AdaptiveColumnSet = {
		type = AdaptiveElementType.ColumnSet,
		columns = columns or {},
		selectAction = selectAction or nil
	}

	return setmetatable(_AdaptiveColumnSet, AdaptiveColumnSet)
end

function AdaptiveColumnSet:AddColumn(column)
	table.insert(self.columns, column)
end

