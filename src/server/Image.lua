---@class AdaptiveImage
---@field url string
---@field size string
AdaptiveImage = setmetatable({}, AdaptiveImage)

AdaptiveImage.__index = AdaptiveImage

---@param url string
---@param selectAction table
---@param size string
function AdaptiveImage.new(url, selectAction, size)
	local _AdaptiveImage = {
		url = url,
		size = size or AdaptiveImageSize.Auto,
	}

	return setmetatable(_AdaptiveImage, AdaptiveImage)
end
