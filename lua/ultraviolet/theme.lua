local colors = require("ultraviolet.colors")

local M = {}

function M.setup()
    local t = colors.default
    local theme = {}

    -- ── Terminal colors (maps to ANSI 0-15) ─────────────────────────────
    theme.terminal = {
        terminal_color_0  = t.bg_alt,     -- black
        terminal_color_8  = t.bg_hi,      -- bright black
        terminal_color_1  = t.pink,       -- red
        terminal_color_9  = "#FF9BC3",    -- bright red
        terminal_color_2  = t.green,      -- green
        terminal_color_10 = "#3DD4A6",    -- bright green
        terminal_color_3  = t.lilac,      -- yellow  (matches Zed's yellow slot)
        terminal_color_11 = "#F2B1ED",    -- bright yellow
        terminal_color_4  = t.blue,       -- blue
        terminal_color_12 = "#8B92FF",    -- bright blue
        terminal_color_5  = t.purple,     -- magenta/purple
        terminal_color_13 = "#D3A8FF",    -- bright purple
        terminal_color_6  = t.lavender,   -- cyan
        terminal_color_14 = "#CAD1FF",    -- bright cyan
        terminal_color_7  = t.fg,         -- white
        terminal_color_15 = "#FFFFFF",    -- bright white
    }

    -- ── Highlights ───────────────────────────────────────────────────────
    local base        = require("ultraviolet.extensions.base").get(t)
    local treesitter  = require("ultraviolet.extensions.treesitter").get(t)
    local telescope   = require("ultraviolet.extensions.telescope").get(t)
    local gitsigns    = require("ultraviolet.extensions.gitsigns").get(t)
    local misc        = require("ultraviolet.extensions.misc").get(t)

    theme.highlights = vim.tbl_deep_extend(
        "force",
        base,
        treesitter,
        telescope,
        gitsigns,
        misc
    )

    return theme
end

return M
