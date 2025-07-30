return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	build = "cargo build --release",

	opts = {
		keymap = { preset = "default", ["<C-y>"] = { "accept" } },

		appearance = { use_nvim_cmp_as_default = true },

		completion = {
			-- list = { selection = { preselect = true, auto_insert = false } },
			-- accept = { auto_brackets = { enabled = false } },
			documentation = { auto_show = true },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },

		signature = { enabled = true },
	},
}
