---@class TextBlock
---@field text string
---@field size string
---@field weight string
---@field wrap boolean
---@field horizontalAlignment string
TextBlock = setmetatable({}, TextBlock)

TextBlock.__index = TextBlock

---@param text string
---@param size string
---@param weight string
function TextBlock.new(text, size, weight)
	local _TextBlock = {
		type = AdaptiveElementType.TextBlock,
		text = text,
		size = size or AdaptiveElementSize.Default,
		weight = weight or AdaptiveFontWeight.Default,
		wrap = false,
		maxLines = 10,
		fontType = AdaptiveFontType.Default,
		color = AdaptiveColors.Default,
		horizontalAlignment = AdaptiveHorizontalAlign.Left,
	}

	return setmetatable(_TextBlock, TextBlock)
end
