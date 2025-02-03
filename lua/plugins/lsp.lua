return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "jdtls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({capabilities = capabilities})
            lspconfig.jdtls.setup({capabilities = capabilities})
            lspconfig.clangd.setup({capabilities = capabilities})

            vim.keymap.set("n", "<leader>H", function()
                vim.lsp.buf.hover()
            end)
            vim.keymap.set("n", "<leader>gd", function()
                vim.lsp.buf.defination()
            end)
            vim.keymap.set("n", "<leader>ca", function()
                vim.lsp.buf.code_action()
            end)
        end,
    },
}
