return {
	{
		"fedepujol/move.nvim",
		keys = {
			{ "<A-j>", "<CMD>MoveLine(1)<CR>", mode = "n", desc = "Move Line Down" },
			{ "<A-k>", "<CMD>MoveLine(-1)<CR>", mode = "n", desc = "Move Line Up" },
			{ "<A-k>", "<CMD>MoveBlock(-1)<CR>", mode = "v", desc = "Move Block Up" },
			{ "<A-j>", "<CMD>MoveBlock(1)<CR>", mode = "v", desc = "Move Block Down" },
		},
		opts = {
			line = {
				enable = true,
				indent = true,
			},
			block = {
				enable = true,
				indent = true,
			},
			word = {
				enable = true,
			},
			char = {
				enable = false,
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"numToStr/Comment.nvim",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		opts = {
			padding = true,
			sticky = true,
			toggler = {
				line = "bo",
				block = "boo",
			},
			opleader = {
				line = "bo",
				block = "boo",
			},
			extra = {
				above = "<leader>bpp",
				below = "<leader>bp",
				eol = "<leader>bop",
			},
			pre_hook = function(ctx)
				local loaded, ts_comment = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
				if loaded and ts_comment then
					return ts_comment.create_pre_hook()(ctx)
				end
			end,
		},
	},
	{
		"karb94/neoscroll.nvim",
		opts = {
			hide_cursor = true,
			stop_eof = true,
			respect_scrolloff = false,
			cursor_scrolls_alone = true,
			easing = "linear",
			performance_mode = false,
		},
	},
	{ "windwp/nvim-ts-autotag" },
}
