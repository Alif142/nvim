--return{
--  "nyoom-engineering/oxocarbon.nvim",
--  name = "oxocarbon",
--  priority = 1000,
--  lazy = false,
--  config = function()
--    vim.cmd("colorscheme oxocarbon")
--    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
--    vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
--  end,
--}
-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
        vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
        vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
    end
}
