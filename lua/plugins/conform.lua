return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "autopep8" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				graphql = { "prettierd" },
			},

			format_on_save = {
				pattern = ".lua,*python,*.graphql,*.css,*.html,*.json,*.yaml,*.md,*.gql,*.rs",
				timeout_ms = 500,
				async = false,
				lsp_fallback = true,
			},
		})
	end,
}
