-- comma as leader key
vim.g.mapleader = ','

local map = vim.keymap.set

map('n', ';', ':', { noremap=true })

-- splits
-- moving
map({'n','c'}, '<C-H>', '<C-W><C-H>', { noremap=true })
map({'n','c'}, '<C-J>', '<C-W><C-J>', { noremap=true })
map({'n','c'}, '<C-K>', '<C-W><C-K>', { noremap=true })
map({'n','c'}, '<C-L>', '<C-W><C-L>', { noremap=true })
-- terminal management
map('n', '<leader>vt', ':vertical terminal')
map('c', 'vt', ':vertical terminal', { noremap=true })
map('n', '<leader>ht', ':terminal')
map('c', 'ht', ':terminal', { noremap=true })
-- window management
map("n", "<leader>sv", "<C-w>v") -- split window vertically
map("n", "<leader>sh", "<C-w>s") -- split window horizontally
map("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
map("n", "<leader>sx", ":close<CR>") -- close current split window

-- TODO: buffer managment

-- clear search highlighting
map('n', '<leader><space>', ':noh<CR>', { noremap=true })

-- match bracket pairs
map({'n','v'}, '<tab>', '%', { noremap=true })
-- set list and listchars
map('n', '<leader>l', ':set list!<CR>')
-- toggle paste and nopaste
map('n', '<leader>p', ':set paste!<CR>')

-- sudo save
map('c', 'w!!', 'w !sudo tee > /dev/null %')

-- gf is built in and will "start editing the file whose name is under the cursor
-- gb is not built in and will "Go back to the file which you came from
map('n', 'gb', '<C-o>', { noremap=true })

-- insert a 'search and replace' command where the word under the cursor is being replaced
--map('n', '<leader>s', ':%s/\<<C-r><C-w>\>//g<Left><Left>' { noremap=true }

-- x does not copy character into register
map('n', 'x', '"_x')

-- keymaps for plugins

-- vim-maximizer
map('n', '<leader>sm', ':MaximizerToggle<CR>')

-- nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<CR>')
