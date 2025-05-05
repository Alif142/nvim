return{
  "nyoom-engineering/oxocarbon.nvim",
  name = "oxocarbon",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd("colorscheme oxocarbon")
    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
  end,
}
