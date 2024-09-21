return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nonicons_extention = require("nvim-nonicons.extentions.nvim-tree")
        require("nvim-tree").setup({
            filters = {
                custom = { "^\\.git" }
            },
            git = {
                ignore = false,
            },
            renderer = {
                icons = {
                    glyphs = nonicons_extention.glyphs,
                },
            },
        })
    end,
}
