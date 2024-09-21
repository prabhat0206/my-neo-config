return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier,
                -- null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.completion.spell,
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.ruff,
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.goimports,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
