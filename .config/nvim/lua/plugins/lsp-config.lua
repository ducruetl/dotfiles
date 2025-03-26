return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function ()
			require("mason-lspconfig").setup {
				ensure_installed = {
					"lua_ls",
					"html",
					"cssls",
					"ts_ls",
					"ltex",
					"clangd",
					"intelephense",
					"tailwindcss",
					"ast_grep",
					"eslint"
				},
			}
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.html.setup({
				capabilities = capabilities,
				filetypes = { "html", "jsx" },
				settings = {
					html = {
						 enabled = { "html", "jsx" },
					}
				}
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
				filetypes = { "css" },
				settings = {
					cssls = {
						 enabled = { "css" },
					}
				}
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				filetypes = { "js", "jsx" },
				settings = {
					ts_ls = {
						 enabled = { "js", "jsx" },
					}
				}
			})
			lspconfig.ltex.setup({
				capabilities = capabilities,
				filetypes = { "latex", "typst", "typ", "bib", "markdown", "plaintex", "tex" },
				settings = {
					ltex = {
						 enabled = { "latex", "typst", "typ", "bib", "markdown", "plaintex", "tex" },
					}
				}
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.intelephense.setup({
				capabilities = capabilities,
				filetypes = { "html", "php" },
				settings = {
					intelephense = {
						 enabled = { "html", "php" },
					}
				}
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities
			})
			lspconfig.eslint.setup({
				capabilities = capabilities
			})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
