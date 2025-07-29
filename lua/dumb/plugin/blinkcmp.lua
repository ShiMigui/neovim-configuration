return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	build = "cargo build --release",

	opts = {
		keymap = {
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide" },
			["<C-y>"] = { "accept" },

			["<S-Tab>"] = { "select_prev", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },

			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },

			["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
			use_nvim_cmp_as_default = true,
		},

		completion = {
			list = { selection = { preselect = true, auto_insert = false } },
			accept = { auto_brackets = { enabled = false } },
			documentation = { auto_show = true },
		},

		sources = { default = { "lsp", "path", "snippets", "buffer" } },

		fuzzy = { implementation = "prefer_rust_with_warning" },

		signature = { enabled = true },
	},

	opts_extend = { "sources.default" },
}
