---@class ultraviolet.Palette
---@field bg      string  main editor background
---@field bg_alt  string  slightly elevated surface
---@field bg_hi   string  selection / active-line / indent-guide-active
---@field bg_sub  string  subtle hover / inactive element
---@field fg      string  primary text
---@field muted   string  comments, line-numbers, icons
---@field blue    string  keywords, titles, info
---@field violet  string  functions, function methods
---@field purple  string  types, tags, accents
---@field lavender string  fields, properties, hints, cyan-slot
---@field pink    string  errors, booleans, constants, variable builtins
---@field rose    string  preproc
---@field green   string  strings, numbers, success
---@field teal    string  strings (alt), regexp
---@field lilac   string  warnings, conflict, type.builtin

local M = {}

M.default = {
    bg       = "#111115",
    bg_alt   = "#0E0E11",
    bg_hi    = "#393940",
    bg_sub   = "#1B1B1F",
    fg       = "#F2F4F8",
    muted    = "#9AA1AB",

    blue     = "#6F78FF",
    violet   = "#AF9CFF",
    purple   = "#C58FFF",
    lavender = "#B3BCEF",
    pink     = "#FF6FAE",
    rose     = "#FF7EB6",
    green    = "#08BD8A",
    teal     = "#08BDBA",
    lilac    = "#E297DB",
}

return M
