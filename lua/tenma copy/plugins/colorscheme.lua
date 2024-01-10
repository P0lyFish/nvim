return {
    'embark-theme/vim',
    as = 'embark',
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme embark]])
        vim.g.lightline = {colorscheme = 'embark'}
    end,
}
