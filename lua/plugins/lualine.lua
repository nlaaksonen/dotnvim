require'lualine'.setup {
    options = {
        theme = 'auto',
        disabled_filetypes = {},
        always_divide_middle = true,
        },
    sections = {
        lualine_a = {'mode', 'FugitiveHead'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
        },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
        },
    tabline = {
        -- lualine_a = {'buffers'},
        -- lualine_b = {},
        -- lualine_c = {},
        -- lualine_x = {},
        -- lualine_y = {},
        -- lyaline_z = {'tabs'}
        },
    extensions = {'fugitive', 'nvim-tree'}
    }
