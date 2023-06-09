return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "manzeloth/live-server",
    lazy = false,
  },
  --makes nvim background transparent
  {
    "xiyaowong/nvim-transparent",
    lazy = false,
  },
  --themes
  { "rebelot/kanagawa.nvim" },
  { "arturgoms/moonbow.nvim" },
  {
    "fedepujol/move.nvim",
    lazy = false,
  }, --for moving selected code and auto-indenting
  {
    "mattn/emmet-vim",
    lazy = false,
  }, --emmet support
  --nvim-surround, specs as per docs
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
