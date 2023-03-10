local status_neosolarized_ok, neosolarized = pcall(require, "neosolarized")
if not status_neosolarized_ok then
    return
end

local n = neosolarized.setup({
    comment_italics = true,
})

--local Color = n.Color
local colors = n.colors
local Group = n.Group
local groups = n.groups
local styles = n.styles

Group.new("StatusLine",
    colors.base0, colors.base02, styles.none, colors.none)
Group.new("StatusLineNC",
    colors.base01, colors.base03, styles.none, colors.none)
Group.new("ColorColumn",
    colors.none, colors.base02, styles.none, colors.none)
Group.new("FloatBorder",
    colors.base0, colors.none, styles.none, colors.none)
Group.new("LineNR",
    colors.base00, colors.base02, styles.none, colors.none)
Group.new("CursorLine",
    colors.none, colors.none, styles.none, colors.none)
Group.new("CursorLineNr",
    colors.yellow, colors.base02, styles.none, colors.base1)
Group.new("Visual", colors.none, colors.base2, styles.none)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

Group.new("DiagnosticUnderlineError",
    colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn",
    colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo",
    colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint",
    colors.none, colors.none, styles.undercurl, cHint)
