local theme = require("ultraviolet.theme")
local util  = require("ultraviolet.util")

local M = {}

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    vim.g.colors_name = "ultraviolet"
    vim.opt.termguicolors = true
    util.load(theme.setup())
end

M.colorscheme = M.load

return M
