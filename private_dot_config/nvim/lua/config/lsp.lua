-- vim.lsp.config('bashls', { } )
vim.lsp.config('clangd', { } )
vim.lsp.config('codebook', { } )
vim.lsp.config('basedpyright', { } )
vim.lsp.config('pyrefly', { } )
vim.lsp.config('pyright', { } )
vim.lsp.config('ruff', { } )
vim.lsp.config('ty', { } )
vim.lsp.config('stylua', { } )
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace',
      },
      diagnostics = {
        disable = { 'missing-fields' },
        globals = {
          'vim',
          'require',
        },
        workspace = {
          lbirary = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
          enable = false
        }
      },
    },
  },
})

vim.lsp.enable({
  -- 'bashls',
  'clangd',
  'codebook',
  'basedpyright',
  'pyrefly',
  'pyright',
  'ruff',
  'ty',
  'lua_ls',
  'stylua',
})

vim.diagnostic.config {
  severity_sort = true,
  update_in_isert = true,

  float = {
    border = 'rounded',
    source = true,
    anchor_bias = 'below',
  },
  underline = { severity = vim.diagnostic.severity.ERROR },
  signs = vim.g.have_nerd_font and {
    text = {
      [vim.diagnostic.severity.ERROR] = '󰅚 ',
      [vim.diagnostic.severity.WARN] = '󰀪 ',
      [vim.diagnostic.severity.INFO] = '󰋽 ',
      [vim.diagnostic.severity.HINT] = '󰌶 ',
    },
  } or {},
  -- Disable inlilne error messages all over the code
  virtual_text = false,
  -- virtual_text = {
  --   source = 'if_many',
  --   spacing = 2,
  --   format = function(diagnostic)
  --     local diagnostic_message = {
  --       [vim.diagnostic.severity.ERROR] = diagnostic.message,
  --       [vim.diagnostic.severity.WARN] = diagnostic.message,
  --       [vim.diagnostic.severity.INFO] = diagnostic.message,
  --       [vim.diagnostic.severity.HINT] = diagnostic.message,
  --     }
  --     return diagnostic_message[diagnostic.severity]
  --   end,
  -- },
}

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    map('n', 'grn', vim.lsp.buf.rename, '[R]e[n]ame')
    map({'n', 'x'}, 'gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction')
    map('n', 'grr', require('fzf-lua').lsp_references, '[G]oto [R]eferences')
    map('n', 'gI', require('fzf-lua').lsp_implementations, '[G]oto [I]mplementation')
    map('n', '<leader>D', require('fzf-lua').lsp_typedefs, 'Type [D]efinition')
    map('n', 'grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    map('n', '<leader>ds', require('fzf-lua').lsp_document_symbols, '[D]ocument [S]ymbols')
    map('n', '<leader>ws', require('fzf-lua').lsp_live_workspace_symbols, '[W]orkspace [S]ymbols')
    map('n', '<leader>D', require('fzf-lua').lsp_typedefs, 'Type [D]efinition')
    map('n', 'K', vim.lsp.buf.hover, 'LSP Hover')
    map('n', 'gd', vim.lsp.buf.definition, 'Go to definition')
    map('n', 'grf', function()
      vim.lsp.buf.format({async = true})
    end, 'Format buffer')
  end
})
