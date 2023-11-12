-- set colorscheme to nightfly with protected call
-- in case it isn't installed

-- colorscheme nightfly, spice, nightfox, tokyonight

-- Default options
require("nightfox").setup({
	options = {
		transparent = true, -- Disable setting background
	},
})

local status, _ = pcall(vim.cmd, "colorscheme nightfox")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
