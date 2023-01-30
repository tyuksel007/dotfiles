require("packerconf")
require("lsp-config")

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.termguicolors = true

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'save'})
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>', {desc = 'quit'})
vim.keymap.set('n', '<leader>h', '<C-w>h', {desc = 'left_window'})
vim.keymap.set('n', '<leader>l', '<C-w>l', {desc = 'right_window'})
vim.keymap.set('n', '<leader>v', '<C-w>v', {desc = 'split_vertical'})
vim.keymap.set('n', '<leader>s', '<C-w>s', {desc = 'split_horizontal'})
vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')


local packer = require'packer'

packer.use({'overcache/NeoSolarized'});
vim.cmd("colorscheme NeoSolarized")
