-- General config
vim.g.mapleader = ' '

local options = {
    -- theme
    termguicolors = true,
    
    -- search
    hlsearch = true,		            --Highlight search
    incsearch = true,                   --incremental search

    -- tabs and indentation
    tabstop = 4,                        --number of columns occupied by a tab
    softtabstop = 4,           	        --see multiple spaces as tabstops so <BS> does the right thing
    expandtab = true,                   --converts tabs to white space
    autoindent = true,                  --indent a new line the same amount as the line just typed
    shiftwidth = 4,                     --width for autoindents

    -- appearance
    number = true,                      --add line numbers
    cc = "120",                         --set an 120 column border for good coding style
    ttyfast = true,                     --Speed up scrolling in Vim
}

-- For Key and Value pairs of 'options', do vim.opt[Key] = value
for k, v in pairs(options) do
	vim.opt[k] = v
end
