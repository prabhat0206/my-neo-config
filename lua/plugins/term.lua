return {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
        require("toggleterm").setup()
        vim.keymap.set('n', '<C-j>', '<cmd>ToggleTerm size=30 direction=float<CR>', {})
    end,
}
