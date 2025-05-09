return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require("telescope.builtin")
        local themes = require("telescope.themes")

        -- Helper function to apply Ivy theme to any builtin picker
        local ivy_picker = function(picker, opts)
            return function()
                picker(themes.get_ivy(opts or {}))
            end
        end

        -- Keymaps with Ivy theme applied
        vim.keymap.set("n", "<leader>ff", ivy_picker(builtin.find_files), { desc = "Find files (Ivy)" })
        vim.keymap.set("n", "<leader>gf", ivy_picker(builtin.git_files), { desc = "Find git files (Ivy)" })
        vim.keymap.set("n", "<leader>fb", ivy_picker(builtin.buffers), { desc = "Find buffers (Ivy)" })
        vim.keymap.set("n", "<leader>fq", ivy_picker(builtin.quickfix), { desc = "Quickfix (Ivy)" })
        vim.keymap.set("n", "<leader>gr", ivy_picker(builtin.lsp_references), { desc = "LSP references (Ivy)" })
        vim.keymap.set("n", "<leader>gd", ivy_picker(builtin.lsp_definitions), { desc = "LSP definitions (Ivy)" })
        vim.keymap.set("n", "<leader>gc", ivy_picker(builtin.git_commits), { desc = "Git commits (Ivy)" })
        vim.keymap.set("n", "<leader>gb", ivy_picker(builtin.git_branches), { desc = "Git branches (Ivy)" })
        vim.keymap.set("n", "<leader>gs", ivy_picker(builtin.git_status), { desc = "Git status (Ivy)" })

        -- Additional pickers (customize as needed)
        vim.keymap.set("n", "<leader>fh", ivy_picker(builtin.help_tags), { desc = "Help tags (Ivy)" })
        vim.keymap.set("n", "<leader>fm", ivy_picker(builtin.man_pages), { desc = "Man pages (Ivy)" })
        vim.keymap.set("n", "<leader>fd", ivy_picker(builtin.diagnostics), { desc = "Diagnostics (Ivy)" })
    end,
}
