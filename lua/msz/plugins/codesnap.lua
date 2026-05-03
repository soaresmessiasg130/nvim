local names = require("msz.assets.names")
local icons = require("msz.assets.icons")
local fonts = require("msz.assets.fonts")

return {
	{
		"mistricky/codesnap.nvim",
		build = "make",
		keys = {
			{ "<leader>cs", "<cmd>CodeSnapSaveTimestamp<cr>", mode = "x", desc = "Save CodeSnap with timestamp" },
		},
		opts = {
			title = names.Me.FullName,
			watermark = names.Me.Tag,
			bg_theme = "grape",
			has_line_number = true,
			mac_window_bar = true,
			has_breadcrumbs = false,
			breadcrumbs_separator = " " .. icons.Chevron.Right .. " ",
			code_font_family = fonts.Mono.Main,
			watermark_font_family = fonts.Mono.Main,
			save_path = os.getenv("HOME") .. "/Pictures/CodeSnap/",
		},
		config = function(_, opts)
			local codesnap = require("codesnap")
			codesnap.setup(opts)

			vim.api.nvim_create_user_command("CodeSnapSaveTimestamp", function()
				local timestamp = os.date("%Y%m%d%H%M%S")
				local save_dir = os.getenv("HOME") .. "/Pictures/CodeSnap/"
				local filename = "codesnap-" .. timestamp .. ".png"

				codesnap.setup({ save_path = save_dir .. filename })
				vim.cmd("CodeSnapSave")
				codesnap.setup({ save_path = save_dir })
			end, { range = true })
		end,
	},
}
