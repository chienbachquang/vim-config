require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- 
map("n", "<D-p>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })

map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })

map("n", "<C-w>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
map("n", "<D-w>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })


map("n", "<C-n>", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

map({ "n", "t" }, "<C-`>", function()
  require("nvchad.term").toggle { pos = "sp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map("n", "<A-f>", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<C-f>", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<S-C-f>", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<C-S-j>", ":echo 'Ctrl+Shift+J pressed'<CR>", { noremap = true, silent = true })
