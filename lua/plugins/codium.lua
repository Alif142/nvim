return {
    -- 1) Core Codeium plugin (Vimscript-based, no key needed)
    {
        "Exafunction/codeium.vim",
        event = "InsertEnter",
        config = function()
        end,
    },

    {
        "jcdickinson/codeium.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = true,
        config = function()
            require("codeium").setup({
                enable_cmp_source = true,

                -- turn on inline ghost text suggestions:
                virtual_text = {
                    enabled = true,  -- <–– this flag!
                    default_filetype_enabled = true,
                    idle_delay = 75, -- ms to wait after you stop typing
                    map_keys = true, -- allow <Tab> to accept, etc.
                    -- you can override the keybindings if you like:
                    key_bindings = {
                        accept = "<Tab>",
                        next   = "<M-]>", -- Alt-]
                        prev   = "<M-[>", -- Alt-[
                        clear  = false,
                    },
                },
            })
        end,
        ft = {
            "lua", "python", "javascript", "typescript", "go", "rust",
            "java", "c", "cpp", "sh", "html", "css", "json", "yaml",
        },
    },
}
