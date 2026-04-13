local M = {}

--- @alias RGB table {number, number, number}

function M.hex_to_rgb(hex)
    return {
        tonumber(hex:sub(2, 3), 16),
        tonumber(hex:sub(4, 5), 16),
        tonumber(hex:sub(6, 7), 16),
    }
end

function M.rgb_to_hex(rgb)
    return string.format("#%02x%02x%02x", rgb[1], rgb[2], rgb[3])
end

--- Blend two hex colors. factor 0 = full a, 1 = full b.
--- @param hex_a string
--- @param hex_b string
--- @param factor number  0..1
--- @return string
function M.blend(hex_a, hex_b, factor)
    local a = M.hex_to_rgb(hex_a)
    local b = M.hex_to_rgb(hex_b)
    return M.rgb_to_hex({
        math.floor(a[1] + (b[1] - a[1]) * factor + 0.5),
        math.floor(a[2] + (b[2] - a[2]) * factor + 0.5),
        math.floor(a[3] + (b[3] - a[3]) * factor + 0.5),
    })
end

--- Apply highlight groups from a theme table.
--- @param theme table
function M.load(theme)
    vim.opt.termguicolors = true
    for group, hl in pairs(theme.highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
    if theme.terminal then
        for k, v in pairs(theme.terminal) do
            vim.g[k] = v
        end
    end
end

return M
