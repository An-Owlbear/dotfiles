require("config.lazy")

vim.cmd("filetype plugin indent on")

vim.opt.number = true
vim.opt.signcolumn = "yes"

vim.cmd[[colorscheme tokyonight]]

-- Automatically moves to new window when creating
vim.api.nvim_create_autocmd("WinNew", {
	pattern = "*",
	callback = function ()
		vim.cmd("wincmd w")
	end
})

-- Sets keybinds for navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Sets borders to be rounded
local _border = "rounded"

vim.diagnostic.config({
	float = { border = _border }
})


local function bordered_hover(_opts)
    _opts = _opts or {}
    return vim.lsp.buf.hover(vim.tbl_deep_extend("force", _opts, {
        border = _border
    }))
end

local function bordered_signature_help(_opts)
    _opts = _opts or {}
    return vim.lsp.buf.signature_help(vim.tbl_deep_extend("force", _opts, {
        border = _border
    }))
end

vim.keymap.set("n", "K", bordered_hover)
vim.keymap.set("n", "<C-s>", bordered_signature_help)
