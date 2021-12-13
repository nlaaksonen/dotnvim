vim.cmd('filetype plugin indent on') -- not needed?
vim.g.loaded_python_provider = 0
vim.g.python3_host_prog = '$HOME/.pyenv/versions/neovim3/bin/python'
vim.opt.pyxversion = 3

-----------------------------------------------------------
-- General
-----------------------------------------------------------
vim.g.mapleader = ','           -- change leader to a comma
vim.opt.mouse = 'a'             -- enable mouse support
--vim.opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
vim.opt.swapfile = false        -- don't use swapfile

vim.opt.undofile = true --Save undo history
-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
vim.opt.number = true           -- show line number
vim.opt.cursorline = true
vim.opt.nuw = 2
vim.opt.showmatch = true        -- highlight matching parenthesis
vim.opt.foldmethod = 'marker'   -- enable folding (default 'foldmarker')
vim.opt.colorcolumn = '80'      -- line lenght marker at 80 columns
vim.opt.splitright = true       -- vertical split to the right
vim.opt.splitbelow = true       -- orizontal split to the bottom
vim.opt.ignorecase = true       -- ignore case letters when search
vim.opt.smartcase = true        -- ignore lowercase for the whole pattern
vim.o.incsearch = true
vim.opt.linebreak = true        -- wrap on word boundary
vim.o.hlsearch = false          -- Set highlight on search
vim.o.breakindent = true --Enable break indent


vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.textwidth = 79
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 5
vim.opt.backspace = 'indent,eol,start'
vim.opt.laststatus = 2
vim.opt.hidden = true
vim.opt.showmode = false
vim.opt.foldlevel = 1
vim.opt.foldlevelstart = 1
vim.opt.formatoptions:remove { 'ro' }
vim.opt.colorcolumn= '+1'
vim.opt.tags:append { './tags' }

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- highlight on yank
vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- 2 spaces for selected filetypes
vim.cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

-----------------------------------------------------------
-- Terminal
-----------------------------------------------------------
-- open a terminal pane on the right using :Term
vim.cmd [[command Term :botright vsplit term://$SHELL]]

-- Terminal visual tweaks
--- enter insert mode when switching to terminal
--- close terminal buffer on process exit
vim.cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]]


--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'
