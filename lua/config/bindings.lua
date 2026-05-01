vim.keymap.set("n", "<leader>tr", function() vim.cmd("set relativenumber") end, { desc = " toggle rnu"})
vim.keymap.set("n", "<leader>tn", function() vim.cmd("set norelativenumber") end, { desc = " toggle nornu"})
