vim.keymap.set("n", "<leader>tr", function() vim.cmd("set relativenumber") end, { desc = " toggle rnu"})
vim.keymap.set("n", "<leader>tn", function() vim.cmd("set norelativenumber") end, { desc = " toggle nornu"})
vim.keymap.set("n", "<leader>pv", function() vim.cmd("Ex") end, { desc = " Explore"})
