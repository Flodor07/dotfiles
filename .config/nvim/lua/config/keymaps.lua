-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set("n", "<Tab>", function()
  vim.cmd("bnext")
end)
vim.keymap.set("n", "<S-Tab>", function()
  vim.cmd("bprev")
end)
-- Add any additional keymaps here
