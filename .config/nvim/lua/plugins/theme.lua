return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            transparent_background = true,
            contrast = "soft",
    		term_colors = true,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				functions = { "italic" },
				keywords = { "italic" },
				strings = { "italic" },
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				telescope = true,
				treesitter = true,
				nvimtree = true,
				which_key = true,
			},
        })
        vim.cmd("colorscheme gruvbox")
   end,
}
