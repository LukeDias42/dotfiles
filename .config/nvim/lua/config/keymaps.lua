-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby

-- Hop configuration
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "<leader>\\", function()
	hop.hint_words(nil)
end, { remap = true })

-- Git configuration
vim.api.nvim_set_keymap(
	"n",
	"<Leader>gr",
	":OpenInGHRepo <CR>",
	{ silent = true, noremap = true, desc = "Open [g]itHub [r]epo" }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>gp",
	":OpenInGHFileLines <CR>",
	{ silent = true, noremap = true, desc = "Open GitHub Line" }
)

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", function()
	telescope.lsp_document_symbols({ symbols = "function" })
end, { remap = true, desc = "[s]earch [f]unctions" })

-- No Neck Pain
vim.api.nvim_set_keymap(
	"n",
	"<Leader>n",
	":NoNeckPain <CR>",
	{ silent = true, noremap = true, desc = "[N]o Neck Pain" }
)

-- Ensure 'ESC' does not swap lines
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")
