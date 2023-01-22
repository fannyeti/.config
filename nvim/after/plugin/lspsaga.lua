local status_lspsaga_ok, lspsaga = pcall(require, "lspsaga")
if not status_lspsaga_ok then
    return
end


lspsaga.setup({
    ui = {
        border = "rounded",
        expand = " ",
        collapse = " ",
        code_action = " ",
        diagnostic = " ",
        colors = {
            normal_bg = "",
            title_bg = "#859900",
            red = "#dc322f",
            magenta = "#d33682",
            orange = "#cb4b16",
            yellow = "#b58900",
            green = "#859900",
            cyan = "#2aa198",
            blue = "#268bd2",
            purple = "#6c71c4",
            white = "#e4e4e4",
            black = "#262626",
        },
    },
    symbol_in_winbar = {
        enable = false,
    },
    outline = {
        show_detail = false,

    }
})
