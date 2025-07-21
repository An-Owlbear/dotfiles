return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			vim.lsp.enable("gleam")
			vim.lsp.enable("lua_ls")
		end
	}
}
