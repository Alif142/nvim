return{
"ThePrimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Ensure Harpoon is loaded
      require("harpoon").setup()

      -- Keybinds setup with proper options
      vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: Add file", silent = true })
      vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, { desc = "Harpoon: Toggle menu", silent = true })

      -- Navigating to specific Harpoon slots
      vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) end, { desc = "Harpoon: File 1", silent = true })
      vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end, { desc = "Harpoon: File 2", silent = true })
      vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end, { desc = "Harpoon: File 3", silent = true })
      vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end, { desc = "Harpoon: File 4", silent = true })
    end
}
