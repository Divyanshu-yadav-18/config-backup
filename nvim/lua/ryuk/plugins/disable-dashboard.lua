return {
	-- Disable the default dashboards
	-- { "goolord/alpha-nvim", enabled = false },
	-- { "nvimdev/dashboard-nvim", enabled = false },

	-- Force Snacks dashboard to take over
	{
		"folke/snacks.nvim",
		priority = 10000, -- load this last
		opts = {
			dashboard = {
				enabled = true,
				header_pad = 2,
				center_header = true,
				sections = {
					{

						{
							section = "header",
							content = {
								"██████╗ ██╗   ██╗██╗   ██╗██╗  ██╗",
								"██╔══██╗╚██╗ ██╔╝██║   ██║██║ ██╔╝",
								"██████╔╝ ╚████╔╝ ██║   ██║█████╔╝ ",
								"██╔══██╗  ╚██╔╝  ██║   ██║██╔═██╗ ",
								"██║  ██║   ██║   ╚██████╔╝██║  ██╗",
								"╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝",
							},
						},
					},
					{ section = "keys", gap = 1, padding = 1 },
					{ section = "startup" },
				},
			},
		},
	},
}
