-------------------- HELPERS ------------------------------

local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g      -- a table to access global variables

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------- CONFIG -------------------------------
g['mapleader'] = ' ' -- leader key
g['maplocalleader'] = ' ' -- leader key

g['node_host_prog'] = vim.call('system', 'which neovim-node-host | tr -d "\n"')

-- register
g['peekup_paste_before'] = '<leader>P'
g['peekup_paste_after'] = '<leader>p'

cmd [[au TextYankPost * silent! lua vim.highlight.on_yank {on_visual=false, timeout=200}]]

-- Remove trailing space
cmd [[autocmd InsertLeavePre * :%s/\s\+$//e]]

-------------------- MAPPINGS -------------------------------

map('n', '\\', '<cmd>noh<CR>')    -- Clear highlights
