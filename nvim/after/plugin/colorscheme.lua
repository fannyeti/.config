-- float window
vim.cmd([[
	highlight FloatBorder guibg=NONE ctermbg=NONE
	highlight link NormalFloat Normal
	highlight NormalFloat ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
	highlight Pmenu ctermbg=NONE guibg=NONE
	]])

--gruv overrides
--[[ require("gruvbox").setup({
    transparent_mode = true,
    overrides = {
        ColorColumn = { bg = "#504945" },
        CursorLine = { bg = "none" },
        SignColumn = { bg = "none" },
        CursorLineNr = { bg = "none"},
        DiagnosticSignError = { bg = "none", fg = "#fb4934" },
        DiagnosticSignHint = { bg = "none", fg = "#83a598" },
        DiagnosticSignWarn = { bg = "none", fg = "#fabd2f" },
        DiagnosticSignInfo = { bg = "none", fg = "#fbf1c7" },
    }
}) ]]
--
-- set colorscheme after options
-- vim.cmd('colorscheme gruvbox')
