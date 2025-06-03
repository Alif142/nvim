return {
  -- 1) Core Codeium plugin (Vimscript-based, no key needed)
  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
    config = function()
      -- No account or API key is required. 
      -- If you see “no API key found,” it usually means
      -- another plugin (e.g. Copilot or an OpenAI-based source) is still loaded.
    end,
  },

  -- 2) Lua wrapper so “codeium” becomes a cmp source
  {
    "jcdickinson/codeium.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = true,
    config = function()
      require("codeium").setup({
        -- disable_bindings = false  -- you can leave everything at default
      })
    end,
    -- Only load this wrapper in filetypes where you want AI help:
    ft = {
      "lua", "python", "javascript", "typescript", "go", "rust",
      "java", "c", "cpp", "sh", "html", "css", "json", "yaml",
    },
  },
}

