local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
    vim.notify("Colourscheme " .. colorscheme .. " not found.")
    return
end
