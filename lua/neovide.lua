vim.keymap.set("n", "<C-q>", ":q!<CR>")
vim.o.guifont = "JetBrainsMono Nerd Font,Microsoft YaHei:h16"  -- "Maple Mono NF CN:style=Regular:h16"
vim.o.title = true
vim.o.titlestring = "%F"
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_cursor_vfx_mode = "wireframe"
vim.g.neovide_padding_top = 0
vim.g.neovide_floating_shadow = false
vim.g.neovide_transparency = 1.0
vim.g.neovide_fullscreen = true
function full_screen()
  if vim.g.neovide_fullscreen == false then
    vim.g.neovide_fullscreen = true
  else
    vim.g.neovide_fullscreen = false
  end
end
vim.keymap.set('n', '<leader>fs', ':lua full_screen()<CR>', { noremap = true, silent = true })
vim.g.neovide_title_background_color = string.format(
  "%x",
  vim.api.nvim_get_hl(0, { id = vim.api.nvim_get_hl_id_by_name("Normal") }).bg
)
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.g.neovide_title_background_color = string.format(
      "%x",
      vim.api.nvim_get_hl(0, { id = vim.api.nvim_get_hl_id_by_name("Normal") }).bg)
  end
})