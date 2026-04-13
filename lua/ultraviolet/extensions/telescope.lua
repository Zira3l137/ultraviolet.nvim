local M = {}

--- @param t ultraviolet.Palette
function M.get(t)
    return {
        TelescopeNormal         = { fg = t.fg,     bg = t.bg_alt },
        TelescopeBorder         = { fg = t.bg_hi,  bg = t.bg_alt },
        TelescopeTitle          = { fg = t.purple, bg = t.bg_alt },
        TelescopePromptNormal   = { fg = t.fg,     bg = t.bg_sub },
        TelescopePromptBorder   = { fg = t.bg_hi,  bg = t.bg_sub },
        TelescopePromptPrefix   = { fg = t.blue,   bg = t.bg_sub },
        TelescopePromptCounter  = { fg = t.muted,  bg = t.bg_sub },
        TelescopeMatching       = { fg = t.lavender, bold = true },
        TelescopeSelection      = { fg = t.fg,     bg = t.bg_hi },
        TelescopeSelectionCaret = { fg = t.blue,   bg = t.bg_hi },
        TelescopePreviewNormal  = { fg = t.fg,     bg = t.bg },
        TelescopePreviewBorder  = { fg = t.bg_hi,  bg = t.bg },
        TelescopePreviewTitle   = { fg = t.violet, bg = t.bg },
        TelescopeResultsNormal  = { fg = t.fg,     bg = t.bg_alt },
        TelescopeResultsBorder  = { fg = t.bg_hi,  bg = t.bg_alt },
        TelescopeResultsTitle   = { fg = t.muted,  bg = t.bg_alt },
        TelescopeResultsDiffAdd = { fg = t.green },
        TelescopeResultsDiffDelete = { fg = t.pink },
        TelescopeResultsDiffChange = { fg = t.blue },
    }
end

return M
