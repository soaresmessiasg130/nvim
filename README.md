# nvim
My nvim configuration

## Installation

Install dependencies:

- Install Packer.nvim
- ripgrep
- fd-finder

For Wayland, install:

- wl-clipboard

Run :PackerSync.

Run :Mason and be sure the following LSP's are installed:

- clangd 
- css-lsp cssls
- eslint-lsp eslint
- html-lsp html
- intelephense 
- jdtls 
- json-lsp jsonls
- lua-language-server lua_ls
- omnisharp@v1.38.0
- pyright 
- rust-analyzer rust_analyzer
- tailwindcss-language-server tailwindcss
- typescript-language-server tsserver
- rescript-lsp

Run :Mason and be sure the following Formatters are installed:

- prettier 
- prettierd
- stylua

Run :Mason and be sure the following DAP's are installed:

- netcoredbg 

Run this after:

- :let g:loaded_perl_provider = 0
- npm install -g neovim
- npm install -g eslint-cli
