local M = {}

function M.register()
	local wk = require("which-key")
	
	-- Basic mappings
	vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
	vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
	vim.keymap.set("n", "<M-j>", ":resize -2<CR>", { desc = "Resize window height -" })
	vim.keymap.set("n", "<M-k>", ":resize +2<CR>", { desc = "Resize window height +" })
	vim.keymap.set("n", "<M-h>", ":vertical resize -10<CR>", { desc = "Resize window width -" })
	vim.keymap.set("n", "<M-l>", ":vertical resize +10<CR>", { desc = "Resize window width +" })

	wk.add({ "<leader>a", group = "formatter" })
	wk.add({ "<leader>ab", "<cmd>'<,'>.!genericformat --format black<CR>", desc = "Format with black", mode = { "v", "n" } })
	wk.add({ "<leader>b", group = "buffer" })
	wk.add({ "<leader>c", group = "code" })
	wk.add({ "<leader>D", group = "DB" })
	wk.add({ "<leader>f", group = "find" })
	wk.add({ "<leader>g", group = "go-to" })
	wk.add({ "<leader>h", group = "harpoon" })
	wk.add({ "<leader>m", group = "markdown" })
	wk.add({ "<leader>w", group = "window" })
	wk.add({ "<leader>wj", ":resize -2<CR>", desc = "Resize (h-)" })
	wk.add({ "<leader>wk", ":resize +2<CR>", desc = "Resize (h+)" })
	wk.add({ "<leader>wh", ":vertical resize -10<CR>", desc = "Resize (v-)" })
	wk.add({ "<leader>wl", ":vertical resize +10<CR>", desc = "Resize (v+)" })
	wk.add({ "<leader>w_", "<C-w>_", desc = "Full height" })
	wk.add({ "<leader>w|", "<C-w>|", desc = "Full width" })
	wk.add({ "<leader>w=", "<C-w>=", desc = "Distr. equally" })
	wk.add({ "<leader>wf", "<C-w>|<C-w>_", desc = "Full screen" })
	wk.add({ "<leader>y", group = "yank" })
	wk.add({ "<leader>yy", '"*y', desc = "Yank to clipboard", mode = { "n", "v" } })
	wk.add({ "<leader>z", group = "zettelkasten" })

	-- Navigation mappings
	wk.add({ "[", group = "Prev" })
	wk.add({ "[b", ":bp<CR>", desc = "Previous buffer" })
	wk.add({ "[q", ":cprev<CR>zz", desc = "Previous quickfix" })
	wk.add({ "]", group = "Next" })
	wk.add({ "]b", ":bn<CR>", desc = "Next buffer" })
	wk.add({ "]q", ":cnext<CR>zz", desc = "Next quickfix" })
end

return M
