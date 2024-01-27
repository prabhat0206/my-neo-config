return { 
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate', 
    config = function()
        local tree_config = require("nvim-treesitter.configs")
        tree_config.setup({
            ensure_installed = { 'c', 'rust', 'lua', 'javascript', 'typescript', 'html', 'css', 'bash', 'json', 'yaml', 'toml' },
            highlight = { enable = true },
            indent = { enable = true },
        }) 
    end
} 
