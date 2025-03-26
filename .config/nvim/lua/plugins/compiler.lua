return {
	{ -- The task runner we use
	  "stevearc/overseer.nvim",
	  commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
	  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
	  opts = {
			task_list = {
				direction = "bottom",
				min_height = 25,
				max_height = 25,
				default_detail = 1
			},
		},
	},
	{ -- This plugin
	  "Zeioth/compiler.nvim",
	  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
	  dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
	  opts = {},
		keys = {
        	{ "<leader>cp", "<cmd>CompilerOpen<cr>", desc="Open compiler"},
					{ "<leader>cs", "<cmd>CompilerToggleResults<cr>", desc="Show/Hide results"},
    },
	},

}
