local Remap = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

Remap.nmap = bind("n", { noremap = false })
Remap.nnoremap = bind("n")
Remap.vnoremap = bind("v")
Remap.xnoremap = bind("x")
Remap.inoremap = bind("i")



local nnoremap = Remap.nnoremap

vim.g.mapleader = " " -- leader key

-- window shortcut


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "ò", "<C-w>", opts)

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
end)
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<Leader>pf", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>pb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>vh", function()
    require('telescope.builtin').help_tags()
end)

-- TODO: Fix this immediately
nnoremap("<leader>vwh", function()
    require('telescope.builtin').help_tags()
end)

nnoremap("<leader>vrc", function()
    require('theprimeagen.telescope').search_dotfiles({ hidden = true })
end)
nnoremap("<leader>va", function()
    require('theprimeagen.telescope').anime_selector()
end)
nnoremap("<leader>vc", function()
    require('theprimeagen.telescope').chat_selector()
end)
nnoremap("<leader>gc", function()
    require('theprimeagen.telescope').git_branches()
end)
nnoremap("<leader>gw", function()
    require('telescope').extensions.git_worktree.git_worktrees()
end)
nnoremap("<leader>gm", function()
    require('telescope').extensions.git_worktree.create_git_worktree()
end)
nnoremap("<leader>td", function()
    require('theprimeagen.telescope').dev()
end)
