-- Get the directory of this init.lua
local config_dir = "C:/Users/jayar/Documents/nvim"

-- Use this to add custom configurations XD
dofile(config_dir .. "/configs/test.lua")
dofile(config_dir .. "/configs/remaps.lua")
dofile(config_dir .. "/configs/nvim.lua")

-- Add Lazy.nvim from your config folder to runtime path
vim.opt.rtp:prepend(vim.fn.expand("~/Documents/nvim/lua/lazy"))

-- ===== Plugins =====
require("lazy").setup({
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				window = {
					position = "right",
					width = 40,
				},
			})
		end,
	},

	-- >>>> Telescope <<<<
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup()
		end,
	},

	-- >>>> code formatting <<<<
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				format_on_save = true,
				formatters_by_ft = {
					lua = { "stylua" },
					c = { "clang_format" },
					cpp = { "clang_format" },
					java = { "google_java_format" },
					rust = { "rustfmt" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					python = { "black" },
				},
			})
		end,
	},

	-- >>>> Themes <<<<
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
	},
	{
		"ayu-theme/ayu-vim",
		lazy = false,
		priority = 1000,
	},
})

-- Apply the colorscheme AFTER plugins are loaded
vim.cmd("colorscheme rose-pine")

vim.cmd("hi Normal     guibg=none ctermbg=none")
vim.cmd("hi NormalNC   guibg=none ctermbg=none")
vim.cmd("hi SignColumn guibg=none ctermbg=none")
vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
