local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")
  use("nvim-tree/nvim-web-devicons")
  use("nvim-treesitter/playground")
  use("windwp/nvim-ts-autotag")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  -- use("hrsh7th/cmp-nvim-lsp")
  -- use("hrsh7th/cmp-buffer")
  -- use("hrsh7th/cmp-path")
  -- use("hrsh7th/cmp-cmdline")
  use("L3MON4D3/LuaSnip")
  use("rafamadriz/friendly-snippets")
  use("mfussenegger/nvim-dap")
  -- use("rcarriga/cmp-dap")
  -- use("williamboman/mason.nvim")
  -- use("williamboman/mason-lspconfig.nvim")
  -- use("neovim/nvim-lspconfig")

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    config = function()
      require("msz.configs.treesitter")
    end,
  })

  use({
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    config = function()
      require("msz.configs.lualine")
    end,
    requires = { "nvim-web-devicons" },
  })

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = { "nvim-lua/plenary.nvim" },
  })

  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("msz.configs.neo-tree")
    end,
  })

  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("msz.configs.toggleterm")
    end,
  })

  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("msz.configs.gitsigns")
    end,
  })

  use({
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  })

  use({
    "windwp/nvim-autopairs",
    config = function()
      require("msz.configs.autopairs")
    end,
  })

  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      require("msz.configs.rose-pine")
    end,
  })

  -- use({
  --   "hrsh7th/nvim-cmp",
  --   config = function()
  --     require("msz.configs.cmp")
  --   end,
  -- })
  --
  -- use({
  --   "saadparwaiz1/cmp_luasnip",
  --   requires = {
  --     "hrsh7th/nvim-cmp",
  --   },
  -- })

  -- use({
  --   "VonHeikemen/lsp-zero.nvim",
  --   branch = "v2.x",
  --   requires = {
  --     "neovim/nvim-lspconfig",
  --     "hrsh7th/nvim-cmp",
  --     "hrsh7th/cmp-nvim-lsp",
  --     "L3MON4D3/LuaSnip",
  --     "williamboman/mason.nvim",
  --     "williamboman/mason-lspconfig.nvim",
  --   },
  -- })

  -- use({
  --   "David-Kunz/cmp-npm",
  --   requires = {
  --     "nvim-lua/plenary.nvim",
  --   },
  -- })

  use({
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("msz.configs.nvim-dap-virtual-text")
    end,
  })

  use({
    "rcarriga/nvim-dap-ui",
    requires = {
      "mfussenegger/nvim-dap",
    },
  })

  -- use({
  --   "jose-elias-alvarez/null-ls.nvim",
  --   config = function()
  --     require("msz.configs.null-ls")
  --   end,
  -- })

  -- use({
  --   "MunifTanjim/prettier.nvim",
  --   config = function()
  --     require("msz.configs.prettier")
  --   end,
  -- })
  
  use({
    "terrortylor/nvim-comment",
    config = function()
      require("msz.configs.nvim-comment")
    end,
  })

  use({
    "tanvirtin/vgit.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("vgit").setup()
    end,
  })

  use({
    "akinsho/git-conflict.nvim",
    tag = "*",
    config = function()
      require("git-conflict").setup()
    end,
  })

  use({
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        hide_cursor = true,
        stop_eof = true,
        performance_mode = false,
      })
    end,
  })

  use({
    "utilyre/sentiment.nvim",
    tag = "*",
    config = function()
      require("sentiment").setup({
        delay = 500,
        limit = 500,
        pairs = {
          { "{", "}" },
          { "[", "]" },
          { "(", ")" },
        },
      })
    end,
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
