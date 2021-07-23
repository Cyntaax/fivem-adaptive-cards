---@class AdaptiveURLAction
---@field type string
---@field title string
---@field url string
---@field iconUrl string
---@field style string
AdaptiveURLAction = setmetatable({}, AdaptiveURLAction)

AdaptiveURLAction.__index = AdaptiveURLAction

---@param title string
---@param url string
function AdaptiveURLAction.new(title, url)
	local _AdaptiveURLAction = {
		type = AdaptiveSelectAction.OpenURL,
		title = title,
		url = url,
		iconUrl = nil,
		style = AdaptiveActionStyle.Default,
	}

	return setmetatable(_AdaptiveURLAction, AdaptiveURLAction)
end

AdaptiveSubmitAction = setmetatable({}, AdaptiveSubmitAction)

AdaptiveSubmitAction.__index = AdaptiveSubmitAction

function AdaptiveSubmitAction.new(title, data)
	local _AdaptiveSubmitAction = {
		type = AdaptiveSelectAction.Submit,
		title = title,
		data = data or {}
	}

	return setmetatable(_AdaptiveSubmitAction, AdaptiveSubmitAction)
end

function AdaptiveSubmitAction:SetData(key, value)
	self.Data[key] = value
end

AdaptiveToggleVisAction = setmetatable({}, AdaptiveToggleVisAction)

AdaptiveToggleVisAction.__index = AdaptiveToggleVisAction

function AdaptiveToggleVisAction.new(title, targetElements)
	local _AdaptiveToggleVisAction = {
		type = AdaptiveSelectAction.ToggleVisibility,
		title = title or "",
		targetElements = targetElements or {}
	}

	return setmetatable(_AdaptiveToggleVisAction, AdaptiveToggleVisAction)
end

function AdaptiveToggleVisAction:AddElement(element, vis)
	local tmp = {}

	if element.ID then
		tmp.elementId = element.ID
		if type(vis) == "boolean" then
			tmp.isVisible = vis
		end
	end

	table.insert(self.targetElements, tmp)
end
