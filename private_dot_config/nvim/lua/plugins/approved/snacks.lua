-- Snacks...
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    lazygit = { enabled = true, },
    notifier = { enabled = true, timeout = 3000, },
    scratch = { enabled = true, },
    terminal = { enabled = true, },
  },
  keys = {
    { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
    { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
    { "<leader>/>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<leader>l",  function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>N",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
  },
}
