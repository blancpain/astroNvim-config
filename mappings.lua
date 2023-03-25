-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- MY MAPPINGS BELOW
    -- Jump between tabs as per config
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- start/stop live server
    ["<leader>lsa"] = { "<cmd>LiveServer start<cr>", desc = "Start live server" }, -- start
    ["<leader>lso"] = { "<cmd>LiveServer stop<cr>", desc = "Stop live server" },   -- start
    -- close split
    ["<leader>cs"] = { ":close<cr>", desc = "Close split" },                       --close split
    -- cursor stays in place when using J and during page jumps and search terms
    ["J"] = { "mzj`z" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    --misc
    ["x"] = { '"_x' }, --configure "x" to only delete char but not copy into register
    ["<Enter>"] = { "o<Esc>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- MY MAPPINGS BELOW

    ["<C-j>"] = { ":MoveBlock(1)<cr>", desc = "Move block down" },
    ["<C-k>"] = { ":MoveBlock(-1)<cr>", desc = "Move block up" },
    ["<C-h>"] = { ":MoveHBlock(-1)<cr>", desc = "Move block backward" },
    ["<C-l>"] = { ":MoveHBlock(1)<cr>", desc = "Move block forward" },
  },
}
