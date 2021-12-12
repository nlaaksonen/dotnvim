--0 by default, closes the tree when you open a file
vim.g.nvim_tree_quit_on_open = 1

-- 0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_indent_markers = 1

-- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_git_hl = 1

-- 0 by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_highlight_opened_files = 1

-- Default is :~. See :help filename-modifiers for more options
vim.g.nvim_tree_root_folder_modifier = ':~:.'

-- 0 by default, append a trailing slash to folder names
vim.g.nvim_tree_add_trailing = 1

-- 0 by default, will disable the window picker.
vim.g.nvim_tree_disable_window_picker = 1

-- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
vim.g.nvim_tree_respect_buf_cwd = 0

-- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
vim.g.nvim_tree_refresh_wait = 1000

-- vim.g.nvim_tree_icons = {
--   \ 'default': '',
--   \ 'symlink': '',
--   \ 'git': {
--     \   'unstaged': "✗",
--     \   'staged': "✓",
--     \   'unmerged': "",
--     \   'renamed': "➜",
--     \   'untracked': "★",
--     \   'deleted': "",
--     \   'ignored': "◌"
--     \   },
--   \ 'folder': {
--     \   'arrow_open': "",
--     \   'arrow_closed': "",
--     \   'default': "",
--     \   'open': "",
--     \   'empty': "",
--     \   'empty_open': "",
--     \   'symlink': "",
--     \   'symlink_open': "",
--     \   }
--   \ }

require'nvim-tree'.setup()
