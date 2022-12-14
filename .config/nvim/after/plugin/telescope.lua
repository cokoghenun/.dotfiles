pcall(require('telescope').load_extension, 'fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles'})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind cursor [W]ord'})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = '[F]ind [R]ecent files'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind open [B]uffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp'})
vim.keymap.set('n', '<leader>fib', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[F]ind [I]n [B]uffer' })
