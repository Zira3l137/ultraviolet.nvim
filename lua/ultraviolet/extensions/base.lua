local util = require("ultraviolet.util")
local M = {}

--- @param t ultraviolet.Palette
function M.get(t)
    return {
        -- ── Editor chrome ────────────────────────────────────────────────
        Normal          = { fg = t.fg,     bg = t.bg },
        NormalNC        = { fg = t.fg,     bg = t.bg },
        NormalFloat     = { fg = t.fg,     bg = t.bg_alt },
        FloatBorder     = { fg = t.bg_hi,  bg = t.bg_alt },
        FloatTitle      = { fg = t.purple, bg = t.bg_alt },

        ColorColumn     = { bg = t.bg_sub },
        CursorLine      = { bg = t.bg_sub },
        CursorColumn    = { bg = t.bg_sub },
        Cursor          = { fg = t.bg,     bg = t.fg },
        TermCursor      = { fg = t.bg,     bg = t.fg },
        LineNr          = { fg = util.blend(t.bg_hi, t.fg, 0.15) },
        CursorLineNr    = { fg = t.muted },
        SignColumn      = { fg = t.muted,  bg = t.bg },
        FoldColumn      = { fg = t.muted,  bg = t.bg },
        Folded          = { fg = t.muted,  bg = t.bg },
        EndOfBuffer     = { fg = t.bg_sub },
        NonText         = { fg = t.bg_hi },
        Whitespace      = { fg = t.bg_hi },
        SpecialKey      = { fg = t.muted },
        Conceal         = { fg = t.muted },
        Directory       = { fg = t.blue },

        VertSplit       = { fg = t.bg_hi, bg = t.bg },
        WinSeparator    = { fg = t.bg_hi, bg = t.bg },

        StatusLine      = { fg = t.fg,    bg = t.bg },
        StatusLineNC    = { fg = t.muted, bg = t.bg },
        TabLine         = { fg = t.muted, bg = t.bg_alt },
        TabLineFill     = { fg = t.muted, bg = t.bg_alt },
        TabLineSel      = { fg = t.fg,    bg = t.bg },
        WinBar          = { fg = t.fg,    bg = t.bg },
        WinBarNC        = { fg = t.muted, bg = t.bg },

        -- ── Pmenu / completion ───────────────────────────────────────────
        Pmenu           = { fg = t.fg,    bg = t.bg_alt },
        PmenuSel        = { fg = t.fg,    bg = t.bg_hi },
        PmenuSbar       = { bg = t.bg_hi },
        PmenuThumb      = { bg = t.muted },
        PmenuMatch      = { fg = t.lavender, bg = t.bg_alt },
        PmenuMatchSel   = { fg = t.lavender, bg = t.bg_hi },

        -- ── Search / selection ───────────────────────────────────────────
        Visual          = { bg = t.bg_hi },
        VisualNOS       = { bg = t.bg_hi },
        Search          = { fg = t.bg_alt, bg = t.fg },
        IncSearch       = { fg = t.bg,     bg = t.lavender },
        CurSearch       = { fg = t.bg,     bg = t.lavender },
        MatchParen      = { fg = t.pink,   bg = t.bg_hi, bold = true },
        Substitute      = { fg = t.pink,   bg = t.bg_hi },

        -- ── Diff ─────────────────────────────────────────────────────────
        DiffAdd         = { bg = util.blend(t.bg, t.green, 0.15) },
        DiffChange      = { bg = util.blend(t.bg, t.blue,  0.15) },
        DiffDelete      = { bg = util.blend(t.bg, t.pink,  0.15) },
        DiffText        = { bg = util.blend(t.bg, t.lilac, 0.2) },
        Added           = { fg = t.green },
        Removed         = { fg = t.pink },

        -- ── Messages ─────────────────────────────────────────────────────
        ErrorMsg        = { fg = t.pink },
        WarningMsg      = { fg = t.lilac },
        ModeMsg         = { fg = t.fg },
        MoreMsg         = { fg = t.blue },
        Question        = { fg = t.lavender },
        Title           = { fg = t.blue, bold = true },
        WildMenu        = { fg = t.bg, bg = t.blue },
        QuickFixLine    = { bg = t.bg_hi },
        qfLineNr        = { fg = t.muted },
        qfFileName      = { fg = t.blue },

        -- ── Spelling ─────────────────────────────────────────────────────
        SpellBad        = { sp = t.pink,    undercurl = true },
        SpellCap        = { sp = t.lavender,undercurl = true },
        SpellLocal      = { sp = t.blue,    undercurl = true },
        SpellRare       = { sp = t.purple,  undercurl = true },

        -- ── Syntax (base) ────────────────────────────────────────────────
        Comment         = { fg = t.muted, italic = true },
        Constant        = { fg = t.pink },
        String          = { fg = t.teal },
        Character       = { fg = t.teal },
        Number          = { fg = t.green },
        Float           = { fg = t.green },
        Boolean         = { fg = t.pink },
        Identifier      = { fg = t.fg },
        Function        = { fg = t.violet },
        Statement       = { fg = t.blue },
        Conditional     = { fg = t.blue },
        Repeat          = { fg = t.blue },
        Label           = { fg = t.blue },
        Operator        = { fg = t.fg },
        Keyword         = { fg = t.blue },
        Exception       = { fg = t.pink },
        PreProc         = { fg = t.rose },
        Include         = { fg = t.rose },
        Define          = { fg = t.rose },
        Macro           = { fg = t.rose },
        PreCondit       = { fg = t.rose },
        Type            = { fg = t.purple },
        StorageClass    = { fg = t.blue },
        Structure       = { fg = t.purple },
        Typedef         = { fg = t.purple },
        Special         = { fg = t.pink },
        SpecialChar     = { fg = t.teal },
        SpecialComment  = { fg = t.muted, italic = true },
        Tag             = { fg = t.purple },
        Delimiter       = { fg = t.fg },
        Debug           = { fg = t.lilac },
        Underlined      = { underline = true },
        Bold            = { bold = true },
        Italic          = { italic = true },
        Error           = { fg = t.pink },
        Todo            = { fg = t.purple, bold = true },

        -- ── LSP ──────────────────────────────────────────────────────────
        LspReferenceText            = { bg = t.bg_hi },
        LspReferenceRead            = { bg = t.bg_hi },
        LspReferenceWrite           = { bg = t.bg_hi },
        LspSignatureActiveParameter = { fg = t.lavender, bold = true },
        LspCodeLens                 = { fg = t.muted },
        LspInlayHint                = { fg = t.muted, italic = true },
        LspInfoBorder               = { fg = t.bg_hi },

        -- ── Diagnostics ──────────────────────────────────────────────────
        DiagnosticError             = { fg = t.pink },
        DiagnosticWarn              = { fg = t.lilac },
        DiagnosticInfo              = { fg = t.blue },
        DiagnosticHint              = { fg = t.lavender },
        DiagnosticUnnecessary       = { fg = t.muted },
        DiagnosticVirtualTextError  = { fg = t.pink },
        DiagnosticVirtualTextWarn   = { fg = t.lilac },
        DiagnosticVirtualTextInfo   = { fg = t.blue },
        DiagnosticVirtualTextHint   = { fg = t.lavender },
        DiagnosticUnderlineError    = { undercurl = true, sp = t.pink },
        DiagnosticUnderlineWarn     = { undercurl = true, sp = t.lilac },
        DiagnosticUnderlineInfo     = { undercurl = true, sp = t.blue },
        DiagnosticUnderlineHint     = { undercurl = true, sp = t.lavender },

        -- ── Markdown ─────────────────────────────────────────────────────
        markdownH1                  = { fg = t.blue,    bold = true },
        markdownH2                  = { fg = t.lavender,bold = true },
        markdownH3                  = { fg = t.violet,  bold = true },
        markdownH4                  = { fg = t.purple,  bold = true },
        markdownH5                  = { fg = t.lilac,   bold = true },
        markdownH6                  = { fg = t.green,   bold = true },
        markdownCode                = { fg = t.teal },
        markdownCodeBlock           = { fg = t.teal },
        markdownLinkText            = { fg = t.blue, underline = true },
        markdownHeadingDelimiter    = { fg = t.muted },
        mkdCodeDelimiter            = { fg = t.muted },
        mkdCodeStart                = { fg = t.violet },
        mkdCodeEnd                  = { fg = t.violet },
    }
end

return M
