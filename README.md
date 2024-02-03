# My Awesome NVIM Configurations
I mainly implement AI-related prototypes using Python and C++ but this configurations should work fine for other purposes. Keep that in mind if you are going to use my configurations.
## Plugin
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim): Neovim plugin to improve the default vim.ui interfaces
- [tpop/vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper
- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter): Git diff but better
- [neovim/lspconfig](https://github.com/neovim/nvim-lspconfig): Nvim LSP
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim): LSP manager
- [nvm-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua): File explorer
- [nvim-telescope/telescope](https://github.com/nvim-telescope/telescope.nvim): Find, Filter, Preview, Pick
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Autocompletion for neovim
- [iamcco/markdown-preview](https://github.com/iamcco/markdown-preview.nvim): Markdown preview plugin for nvim
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo): Modern folding for nvim

## Themes
- [embark-theme/vim](https://github.com/embark-theme/vim): An amazing theme for vim/neovim
- [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim): Status line manager

## Notes
### Python
When using conda, I usually create `pyrightconfig.json`:
```
{
    "executionEnvironments": [
        {"root": "."}
    ],
}
```
To manually set the root (sometimes pyright cannot recognize the project's root).

### C/C++/CUDA
For C++/CUDA projects, I create the following script:
```
echo -e "CompileFlags:\n    Add: [-I${PWD}/include]" > .clangd

mkdir -p build
cd build
cmake ..
make
./$1
cd ..
```
This script will build the project and create the `.clangd` file for clang LSP.
