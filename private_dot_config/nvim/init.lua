require("config.lazy")
vim.cmd("colorscheme golden")
--
require("lazy").setup({
  { 'folke/neodev.nvim', { 'folke/neoconf.nvim', cmd = 'Neoconf' } },
  { 'junegunn/vim-easy-align' },
  require("plugins.testing.conform"),
  require("plugins.testing.harpoon"),
  require("plugins.testing.luasnip"),
  require("plugins.testing.obsidian"),
  require("plugins.testing.snacks"),
  require("plugins.testing.trouble"),
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = {} },

  require("plugins.kickstart.lazydev"),
  require("plugins.kickstart.todo-comments"),

  require("plugins.approved.blink"),
  require("plugins.approved.fzf"),
  require("plugins.approved.lualine"),
  { 'tpope/vim-markdown' },

  -- LSP
  -- This was so useful!  https://dotfiles.substack.com/p/native-lsp-in-neovim-012
  { 'mason-org/mason.nvim', opts = { } },
  { 'neovim/nvim-lspconfig' },
  -- { 'mason-org/mason-lspconfig.nvim', opts = { automatic_enable = false } },
  { 'mason-org/mason-lspconfig.nvim',
    dependencies = {
      'mason-org/mason.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = { automatic_enable = false, },
  },
  { 'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = { 'mason-org/mason.nvim' },
    opts = {
      ensure_installed = {
        'bashls',
        'clangd',
        -- 'codebook', -- reports natural language words, lots of false positives
        -- 'basedpyright',
        'pylsp',
        -- 'pyrefly',
        -- 'pyright',
        'ruff',
        -- 'ty',
        'lua_ls',
        'stylua',
        'prettier',
      }
    }
  },

  -- Other stuff
  require("plugins.approved.nvim-treesitter"),
  require("plugins.approved.oil"),
  { 'vimjas/vim-python-pep8-indent' },
  { 'mhinz/vim-startify' },
  require("plugins.approved.tree"),
  require("plugins.approved.which-key"),

  -- require("plugins.kickstart.git-signs"),
  --
  -- require("plugins.retire.commentary"),
  -- require("plugins.retire.fugitive"),
  -- require("plugins.retire.tagbar"),
  -- require("plugins.retire.ultisnips"),

  -- install = { colorscheme = { "vividchalk"} },
  install = { colorscheme = { "golden"} },
  -- install = { colorscheme = { "ayu"} }, -- Fix background
})

require("lualine").setup({
    options = { theme = "ayu_dark" },
})

require("config.lsp")
require("helpers")
require("config.settings")
require("config.bindings")

-- vim.cmd("colorscheme vividchalk")
vim.cmd("colorscheme golden")
-- vim.cmd("colorscheme ayu")
require("config.colors")  -- patch colors afterselecting a theme

-- vim.diagnostic.config({
--   virtual_text = false,
--   -- virtual_text = {
--   --   virt_text_pos = "eol_right_align",
--   -- },
--   signs = true,
--   jump = { float = true },
-- })

-- vim.keymap.set({'n', 'v'}, '<Leader>f', vim.lsp.buf.format, bufopts)
vim.keymap.set({'n', 'v'}, '<leader>f', function()
  vim.lsp.buf.format({ })
end , bufopts)

vim.keymap.set('n', '<leader>/', function () Snacks.terminal() end)
vim.keymap.set('n', '<leader>v', function () FzfLua.files({cwd = '~/.config/nvim' }) end)
