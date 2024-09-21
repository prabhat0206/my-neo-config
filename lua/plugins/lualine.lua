return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local icons = require("nvim-nonicons")
        local nonicons_extention = require("nvim-nonicons.extentions.lualine")
        require('lualine').setup({
            options = {
                theme = 'auto',
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' },
                icons_enabled = true,
            },
            sections = {
                lualine_a = { nonicons_extention.mode },
                lualine_z = {
                    {
                        "branch",
                        icon = icons.get("git-branch"),
                    },
                },
            }

        })
    end,
}
