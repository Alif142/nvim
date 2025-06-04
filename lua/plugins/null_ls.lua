-- Add to your lazy.nvim setup
return{
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.black,
                -- Or use autopep8 or yapf instead:
                -- null_ls.builtins.formatting.autopep8,
                -- null_ls.builtins.formatting.yapf,
            },

            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr })
                        end,
                    })
                end
            end,

        })
        vim.keymap.set("n", "<leader>f", function()
            vim.lsp.buf.format()
        end, { desc = "Format current buffer with LSP" })

    end,
}

