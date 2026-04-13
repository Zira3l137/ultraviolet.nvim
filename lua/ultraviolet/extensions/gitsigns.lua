local M = {}

--- @param t ultraviolet.Palette
function M.get(t)
    return {
        GitSignsAdd          = { fg = t.green },
        GitSignsChange       = { fg = t.blue },
        GitSignsDelete       = { fg = t.pink },
        GitSignsAddNr        = { fg = t.green },
        GitSignsChangeNr     = { fg = t.blue },
        GitSignsDeleteNr     = { fg = t.pink },
        GitSignsAddLn        = { bg = t.bg_sub },
        GitSignsChangeLn     = { bg = t.bg_sub },
        GitSignsCurrentLineBlame = { fg = t.muted, italic = true },
    }
end

return M
