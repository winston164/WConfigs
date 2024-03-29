-- :help options
options = vim.opt
options.backup = false                          -- creates a backup file
options.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
options.cmdheight = 2                           -- more space in the neovim command line for displaying messages
options.completeopt = { "menuone", "noselect" } -- mostly just for cmp
options.conceallevel = 0                        -- so that `` is visible in markdown files
options.fileencoding = "utf-8"                  -- the encoding written to a file
options.hlsearch = true                         -- highlight all matches on previous search pattern
options.ignorecase = true                       -- ignore case in search patterns
options.mouse = "a"                             -- allow the mouse to be used in neovim
options.pumheight = 10                          -- pop up menu height
options.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
options.showtabline = 2                         -- always show tabs
options.smartcase = true                        -- smart case
options.smartindent = true                      -- make indenting smarter again
options.splitbelow = true                       -- force all horizontal splits to go below current window
options.splitright = true                       -- force all vertical splits to go to the right of current window
options.swapfile = false                        -- creates a swapfile
options.termguicolors = true                    -- set term gui colors (most terminals support this)
options.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
options.undofile = true                         -- enable persistent undo
options.updatetime = 300                        -- faster completion (4000ms default)
options.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
options.expandtab = true                        -- convert tabs to spaces
options.shiftwidth = 2                          -- the number of spaces inserted for each indentation
options.tabstop = 2                             -- insert 2 spaces for a tab
options.cursorline = true                       -- highlight the current line
options.number = true                           -- set numbered lines
options.relativenumber = false                  -- set relative numbered lines
options.numberwidth = 4                         -- set number column width to 2 {default 4}
options.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
options.wrap = false                            -- display lines as one long line
options.scrolloff = 8                           -- is one of my fav
options.sidescrolloff = 8
options.guifont = "monospace:h17"               -- the font used in graphical neovim applications

options.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- Nvim Tree recommendaiton: no netrw (nvim-tree-netrw)
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
