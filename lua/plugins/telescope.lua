return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
	config = function()
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files"})
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
	end,
}
