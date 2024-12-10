
-- file browser
vim.keymap.set("n", "<leader>fb", ":Oil<CR>", { desc = "open oil browser" })

--snacks
vim.keymap.set("n", "<leader>lg", ":lua Snacks.lazygit.open()<CR>", { desc = "open lazygit" })
vim.keymap.set("n", "<leader>tt", ":lua Snacks.terminal.toggle()<CR>", { desc = "toggle terminal" })
vim.keymap.set("n", "<leader>gb", ":lua Snacks.git.blame_line()<CR>", { desc = "show git blame line" })


