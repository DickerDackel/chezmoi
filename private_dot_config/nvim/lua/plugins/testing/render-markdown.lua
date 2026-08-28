return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    completions = {
      blink = { enabled = true },
      lsp = { enabled = true },
    },
    -- code = { style = 'normal' },
    heading = {
      icons = { '󰬺 ', '󰬻  ', '󰬼 ', '󰬽 ', '󰬾 ', '󰬿 ' },
      -- icons = { '󰲠 ', '󰲢 ', '󰲤 ', '󰲦 ', '󰲨 ', '󰲪 ' },
      -- icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
      -- icons = { '󰎤 ', '󰎧 ', '󰎪 ', '󰎭 ', '󰎱 ', '󰎳 ' },
      -- icons = { '󰎦 ', '󰎩 ', '󰎫 ', '󰎫 ', '󰎮 ', '󰎵 ' },
      -- icons = { '󰼏 ', '󰼐 ', '󰼑 ', '󰼒 ', '󰼓 ', '󰼔 ' },
      -- icons = { '󰎥 ', '󰎨 ', '󰎫 ', '󰎲 ', '󰎯 ', '󰎴 ' },
      border = true,
      above = '━',
      below = '━',
      width = 'block',
      min_width = 72,
    },
    code = {
      -- style = 'language',
      style = 'language',
      -- border = 'thick',
      border = 'hide',
      -- width = 'block',
      left_pad = 4,
      right_pad = 4,
      language_border = ' ',
      language_left = '',
      language_right = '',
    },
    pipe_table = {
      preset = 'round',
    }
  },
}
