-- FIND FILES BY NAME
vim.keymap.set('n', '<A-f>', ':Telescope find_files<CR>', {noremap = true})

-- FIND FILES BY TEXT
vim.keymap.set('n', '<A-s>', ':Telescope live_grep<CR>', {noremap = true})

return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' }
}
