local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local handlers = {
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({})
	end,
	["html"] = function()
		require("lspconfig").html.setup({
			capabilities = capabilities,
		})
	end,
	["cssls"] = function()
		require("lspconfig").cssls.setup({
			capabilities = capabilities,
		})
	end,
  ["clangd"] = function()
		require("lspconfig").clangd.setup({
			capabilities = capabilities,
			cmd = {
				"clangd",
				"--background-index",
				"--clang-tidy",
				"--header-insertion=iwyu",
				"--completion-style=detailed",
				"--function-arg-placeholders"
			}
		})
	end
}

return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		handlers = handlers,
	},
}
