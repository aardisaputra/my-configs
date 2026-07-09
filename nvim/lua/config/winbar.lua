local function winbar()
  local filename = vim.fn.expand("%:t")
  if filename == "" then
    return "[No Name]"
  end

  local ok, devicons = pcall(require, "nvim-web-devicons")
  local icon = ""
  if ok then
    icon = devicons.get_icon(filename, vim.fn.expand("%:e"), { default = true })
  end

  return icon .. "  " .. filename
end

_G.winbar_component = winbar

local function set_winbar_colors()
  vim.api.nvim_set_hl(0, "WinBar", { bg = "#3b4048", fg = "#e6e6e6", bold = true })
  vim.api.nvim_set_hl(0, "WinBarNC", { bg = "#2a2e34", fg = "#7a828c" })
end

set_winbar_colors()
vim.api.nvim_create_autocmd("ColorScheme", { callback = set_winbar_colors })
