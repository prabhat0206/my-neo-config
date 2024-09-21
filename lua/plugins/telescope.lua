return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            local icons = require("nvim-nonicons")

            require("telescope").setup({
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {}
                },
                defaults = {
                    prompt_prefix = "  " .. icons.get("telescope") .. "  ",
                    selection_caret = " ❯ ",
                    entry_prefix = "   ",
                },
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
