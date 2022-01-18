vim.o.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode

vim.g.nord_contrast = true
vim.g.nord_borders = true
-- Load the colorscheme
require('nord').set()

-- vim.cmd('colorscheme afterglow')

vim.g.alduin_Shout_Fire_Breath = 1
-- vim.cmd('colorscheme alduin')

-- vim.cmd([[colorscheme gruvbox]])

-- vim.cmd('colorscheme elly')

-- vim.cmd[[colorscheme catppuccin]]

-- require('moonlight').set()

-- require('solarized').set()

-- require('seoul256')

vim.cmd('colorscheme kanagawa')
