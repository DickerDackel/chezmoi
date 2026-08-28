return {
  "zk-org/zk-nvim",
  name = "zk",
  opts = {
    picker = "fzf_lua",

    lsp = {
      config = {
        name = "zk",
        cmd = {"zk", "lsp"},
        filetypes = {"markdown"},
      },
      auto_attach = {
        enabled = true,
      },
    },
    tags = {
      multi_select_strategy = "AND",
    },
  },
}
