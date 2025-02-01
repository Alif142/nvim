return {
        "mbbill/undotree",
        cmd = "UndotreeToggle",
        keys = {
            { "<leader>u", ":UndotreeToggle<CR>", desc = "Toggle UndoTree" }
        },
        config = function()
            vim.g.undotree_SetFocusWhenToggle = 1 -- Focus on the undo tree window when toggled
        end
}

