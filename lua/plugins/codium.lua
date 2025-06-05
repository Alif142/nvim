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
      })
    end,
    ft = {
      "lua", "python", "javascript", "typescript", "go", "rust",
      "java", "c", "cpp", "sh", "html", "css", "json", "yaml",
    },
  },
}

