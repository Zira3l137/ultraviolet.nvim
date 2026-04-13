local M = {}

--- @param t ultraviolet.Palette
function M.get(t)
    return {
        -- which-key
        WhichKey          = { fg = t.blue },
        WhichKeyGroup     = { fg = t.purple },
        WhichKeyDesc      = { fg = t.fg },
        WhichKeySeparator = { fg = t.muted },
        WhichKeyFloat     = { bg = t.bg_alt },
        WhichKeyBorder    = { fg = t.bg_hi, bg = t.bg_alt },
        WhichKeyTitle     = { fg = t.violet, bg = t.bg_alt },

        -- indent-blankline
        IblIndent         = { fg = t.bg_sub },
        IblScope          = { fg = t.bg_hi },
        IndentBlanklineChar           = { fg = t.bg_sub },
        IndentBlanklineContextChar    = { fg = t.bg_hi },

        -- nvim-cmp
        CmpItemAbbr           = { fg = t.fg },
        CmpItemAbbrDeprecated = { fg = t.muted, strikethrough = true },
        CmpItemAbbrMatch      = { fg = t.lavender, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = t.lavender },
        CmpItemKind           = { fg = t.purple },
        CmpItemMenu           = { fg = t.muted },
        CmpItemKindText       = { fg = t.fg },
        CmpItemKindMethod     = { fg = t.violet },
        CmpItemKindFunction   = { fg = t.violet },
        CmpItemKindField      = { fg = t.lavender },
        CmpItemKindVariable   = { fg = t.fg },
        CmpItemKindProperty   = { fg = t.lavender },
        CmpItemKindKeyword    = { fg = t.blue },
        CmpItemKindSnippet    = { fg = t.teal },
        CmpItemKindModule     = { fg = t.rose },
        CmpItemKindEnum       = { fg = t.purple },
        CmpItemKindStruct     = { fg = t.purple },
        CmpItemKindInterface  = { fg = t.lilac },
        CmpItemKindType       = { fg = t.purple },
        CmpItemKindColor      = { fg = t.pink },
        CmpItemKindFile       = { fg = t.blue },
        CmpItemKindFolder     = { fg = t.blue },

        -- mini.icons / mini.statusline
        MiniStatuslineModeNormal  = { fg = t.bg,    bg = t.blue,    bold = true },
        MiniStatuslineModeInsert  = { fg = t.bg,    bg = t.green,   bold = true },
        MiniStatuslineModeVisual  = { fg = t.bg,    bg = t.purple,  bold = true },
        MiniStatuslineModeReplace = { fg = t.bg,    bg = t.pink,    bold = true },
        MiniStatuslineModeCommand = { fg = t.bg,    bg = t.lilac,   bold = true },
        MiniStatuslineFilename    = { fg = t.fg,    bg = t.bg_sub },
        MiniStatuslineFileinfo    = { fg = t.muted, bg = t.bg_sub },
        MiniStatuslineDevinfo     = { fg = t.muted, bg = t.bg_alt },
        MiniStatuslineInactive    = { fg = t.muted, bg = t.bg },

        -- mini.cursorword
        MiniCursorword        = { bg = t.bg_hi },
        MiniCursorwordCurrent = { bg = t.bg_hi },

        -- trouble.nvim
        TroubleNormal     = { fg = t.fg,    bg = t.bg_alt },
        TroubleError      = { fg = t.pink },
        TroubleWarning    = { fg = t.lilac },
        TroubleHint       = { fg = t.lavender },
        TroubleInfo       = { fg = t.blue },
        TroubleFile       = { fg = t.blue },
        TroubleSource     = { fg = t.muted },
        TroubleCode       = { fg = t.muted },
        TroubleLocation   = { fg = t.muted },
        TroubleCount      = { fg = t.purple, bg = t.bg_hi },
    }
end

return M
