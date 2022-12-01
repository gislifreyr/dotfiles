local opt = vim.opt -- global option
local wo = vim.wo -- buffer-local option
local bo = vim.bo -- window-local option
local g = vim.g
local cmd = vim.cmd


-- misc
opt.swapfile = true
opt.hidden = true --buffers
opt.backup = false -- no file backups
opt.encoding = 'utf8'
opt.writebackup = false
-- cmd('syntax on')
-- default opt.backspace = 'indent,eol,start'

-- line numbers
opt.number = true
opt.relativenumber = true
cmd [[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END
]]

-- cursor
opt.cursorline = true
opt.ruler = true -- cursor

-- line wrapping
opt.wrap = false

-- searching
opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true

-- appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = "yes"
opt.scrolloff = 6

-- status bar
opt.showcmd = true
opt.showmode = false

-- mouse
opt.mousehide = true -- hide mouse when typing
opt.selectmode = 'mouse' -- select text with mouse

-- splits
opt.splitbelow = true
opt.splitright = true

-- see tabs, spaces, eol (keymap is '<leader>l')
opt.listchars = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣'

-- tab
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.textwidth = 0
--[[
" tab-settings for specific filetypes
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2
autocmd FileType tf setlocal tabstop=2 shiftwidth=2
]]--
opt.autoindent = true

-- command completion
opt.wildmenu = true
opt.wildmode = 'list:longest'

-- add '-' and '_' as part of a keyword
opt.iskeyword:append("-", "_")
