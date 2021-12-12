local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<CR>', ':nohl<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- nvim-tree
map('n', '<F3>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

-- trouble
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)

-- bufferline
map('n', ']b', ':BufferLineCycleNext<CR>', default_opts)
map('n', '[b', ':BufferLineCyclePrev<CR>', default_opts)
map('n', '<leader>br', ':BufferLineMoveNext<CR>', default_opts)
map('n', '<leader>bl', ':BufferLineMovePrev<CR>', default_opts)
map('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', default_opts)
map('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', default_opts)
map('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', default_opts)
map('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', default_opts)
map('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', default_opts)
map('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', default_opts)
map('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', default_opts)
map('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', default_opts)
map('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', default_opts)
