# nvim
My nvim configuration

## Installation

Install dependencies:

- Install Packer.nvim
- ripgrep
- fd-finder
- xclip
- wl-clipboard (for Wayland)

Run :PackerSync.

Run :Mason and be sure are installed:

- clangd 
- css-lsp cssls
- eslint-lsp eslint
- html-lsp html
- intelephense 
- jdtls 
- json-lsp jsonls
- lua-language-server lua_ls
- netcoredbg 
- omnisharp@v1.38.0
- prettier 
- prettierd
- pyright 
- rust-analyzer rust_analyzer
- tailwindcss-language-server tailwindcss
- typescript-language-server tsserver
- stylua
- rescript-lsp

Run this after:

- :let g:loaded_perl_provider = 0
- npm install -g neovim
- npm install -g eslint-cli
