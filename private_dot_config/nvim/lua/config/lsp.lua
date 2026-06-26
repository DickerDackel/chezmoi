-- vim.lsp.config('bashls', { } )
vim.lsp.config('clangd', { } )
vim.lsp.config('codebook', { } )
vim.lsp.config('basedpyright', { } )
vim.lsp.config('pylsp', {
  pylsp = {
    configurationSources = {'pycodestyle'},
    rope = {
      extensionModules = null,  -- string = null - Builtin and c-extension modules that are allowed to be imported and inspected by rope.
      ropeFolder = null,  -- array of unique string items = null - The name of the folder in which rope stores project configurations and data. Pass null for not using such a folder at all.
    },
    signature = {
      formatter = "black",  -- string (one of: 'black', 'ruff', None) = "black" - Formatter to use for reformatting signatures in docstrings.
      line_length = 88,  -- number = 88 - Maximum line length in signatures.
    },
    plugins = {
      -- autopep8 = { enabled = false }, -- [true] - Enable or disable the plugin (disabling required to use yapf).
      flake8 = {
	enabled = false,  -- bool = false - Enable or disable the plugin.

	config = null,  -- str = null - Path to the config file that will be the authoritative config source.
	exclude = {},   -- list[str] - List of files or directories to exclude.
	executable = "flake8",  -- str = "flake8" - Path to the flake8 executable.
	extendIgnore = {},  -- list[str] = [] - List of errors and warnings to append to ignore list.
	extendSelect = {},  -- list[str] = [] - List of errors and warnings to append to select list.
	filename = null,  -- str = null - Only check for filenames matching the patterns in this list.
	hangClosing = null,  -- bool = null - Hang closing bracket instead of matching indentation of opening bracket's line.
	ignore = {},  -- list[str] = [] - List of errors and warnings to ignore (or skip).
	indentSize = null,  -- int = null - Set indentation spaces.
	maxComplexity = null,  -- int = null - Maximum allowed complexity threshold.
	maxLineLength= null,  -- int = null - Maximum allowed line length for the entirety of this run.
	perFileIgnores = {},  -- list[str] = [] - A pairing of filenames and violation codes that defines which violations to ignore in a particular file, for example: ["file_path.py:W305,W304"]).
	select = {},  -- list[str] = null - List of errors and warnings to enable.
      },
      jedi8 = {
	jedi = {
	  auto_import_modules = {"numpy"},  -- array of string items = ["numpy"] - List of module names for jedi.settings.auto_import_modules.
	  extra_paths = {},  -- array of string items = [] - Define extra paths for jedi.Script.
	  prioritize_extra_paths = false,  -- boolean = false - Whether to place extra_paths at the beginning (true) or end (false) of sys.path
	  env_vars = null,  -- object = null - Define environment variables for jedi.Script and Jedi.names.
	  environment = null,  -- string = null - Define environment for jedi.Script and Jedi.names.
	},
	jedi_completion = {
	  enabled = true,  -- boolean = true - Enable or disable the plugin.
	  include_params = true,  -- boolean = true - Auto-completes methods and classes with tabstops for each parameter.
	  include_class_objects = false,  -- boolean = false - Adds class objects as a separate completion item.
	  include_function_objects = false,  -- boolean = false - Adds function objects as a separate completion item.
	  fuzzy = false,  -- boolean = false - Enable fuzzy when requesting autocomp
	  eager = false,  -- boolean = false - Resolve documentation and detail eagerly.
	  resolve_at_most = 25,  -- integer = 25 - How many labels and snippets (at most) should be resolved?
	  cache_for = {"pandas", "numpy", "tensorflow", "matplotlib"},  -- array of string items = ["pandas", "numpy", "tensorflow", "matplotlib"] - Modules for which labels and snippets should be cached.
	  enabled = true,  -- boolean = true - Enable or disable the plugin.
	  follow_imports = true,  -- boolean = true - The goto call will follow imports.
	  follow_builtin_imports = true,  -- boolean = true - If follow_imports is True will decide if it follow builtin imports.
	  follow_builtin_definitions = true,  -- boolean = true - Follow builtin and extension definitions to stubs.
	},
	jedi_hover = { enabled = true },  -- boolean = true - Enable or disable the plugin.
	jedi_references = { enabled = true },  -- boolean = true - Enable or disable the plugin.
	jedi_signature_help = { enabled = true },  -- boolean = true - Enable or disable the plugin.
	jedi_symbols = {
	  enabled = true,  -- boolean = true - Enable or disable the plugin.
	  all_scopes = true,  -- boolean = true - If True lists the names of all scopes instead of only the module namespace.
	  include_import_symbols = true,  -- boolean = true - If True includes symbols imported from other libraries.
	},
	jedi_type_definition = { enabled = true },  -- boolean = true - Enable or disable the plugin.
      },
      mccabe = {
	enabled = true,  -- boolean = true - Enable or disable the plugin.
	threshold = 15,  -- integer = 15 - The minimum threshold that triggers warnings about cyclomatic complexity.
      },

      jedi_completion = { enabled = true },
      preload = {
	enabled = true,  -- boolean = true - Enable or disable the plugin.
	modules = {},  -- array of unique string items = [] - List of modules to import on startup
      },
      pycodestyle = {
	enabled = true,  -- boolean = true - Enable or disable the plugin.

	addIgnore = {'W391'},  -- array of unique string items = [] - Ignore errors and warnings in addition to the specified convention.
	addSelect = {},  -- array of unique string items = [] - Select errors and warnings in addition to the specified convention.
	convention = null,  -- string (one of: 'pep257', 'numpy', 'google', None) = null - Choose the basic list of checked errors by specifying an existing convention.
	enabled = false,  -- boolean = false - Enable or disable the plugin.
	exclude = {},  -- array of unique string items = [] - Exclude files or directories which match these patterns.
	filename = {},  -- array of unique string items = [] - When parsing directories, only check filenames matching these patterns.
	hangClosing = null,  -- boolean = null - Hang closing bracket instead of matching indentation of opening bracket's line.
	ignore = {},  -- array of unique string items = [] - Ignore errors and warnings
	indentSize = null,  -- integer = null - Set indentation spaces.
	match = "(?!test_).*\\.py",  -- string = "(?!test_).*\\.py" - Check only files that exactly match the given regular expression; default is to match files that don't start with 'test_' but end with '.py'.
	matchDir = "[^\\.].*",  -- string = "[^\\.].*" - Search only dirs that exactly match the given regular expression; default is to match dirs which do not begin with a dot.
	maxLineLength = 100,  -- integer = null - Set maximum allowed line length.
	select = null,  -- array of unique string items = null - Select errors and warnings
      },
      pyflakes = { enabled = true },  -- boolean = true - Enable or disable the plugin.
      pylint = {
	enabled = false,  -- boolean = false - Enable or disable the plugin.
	args = {},  -- array of non-unique string items = [] - Arguments to pass to pylint.
	executable = null,  -- string = null - Executable to run pylint with. Enabling this will run pylint on unsaved files via stdin. Can slow down workflow. Only works with python3.
      },
      rope = {
	rope_autoimport = {
	  enabled = false,  -- boolean = false - Enable or disable autoimport. If false, neither completions nor code actions are enabled. If true, the respective features can be enabled or disabled individually.
	  completions = { enabled = true },  -- boolean = true - Enable or disable autoimport completions.
	  code_actions = { enabled = true },  -- boolean = true - Enable or disable autoimport code actions (e.g. for quick fixes).
	  memory = false,  -- boolean = false - Make the autoimport database memory only. Drastically increases startup time.
	  enabled = false,  -- boolean = false - Enable or disable the plugin.
	  eager = false,  -- boolean = false - Resolve documentation and detail eagerly.
	}
      },
      yapf = { enabled = true },  -- boolean = true - Enable or disable the plugin.
    }
  }
})
-- vim.lsp.config('pyrefly', { } )
-- vim.lsp.config('pyright', { } )
vim.lsp.config('ruff', { } )
-- vim.lsp.config('ty', { } )
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

vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  }
})


vim.lsp.enable({
  -- 'bashls',
  'clangd',
  -- 'codebook',
  -- 'basedpyright',
  -- 'pyrefly',
  -- 'pyright',
  'pylsp',
  'ruff',
  -- 'ty',
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
