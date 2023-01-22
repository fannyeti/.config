local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end


local file_name = {
    "filename",
    file_status = true,
    path = 1,
}

lualine.setup({
    options = {
        icons_enabled = false,
        theme = "solarized_dark",
        component_separators = "",
        section_separators = "",
        always_divide_middle = true,
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { file_name },
        lualine_x = {
            "diagnostics",
            "filetype",
        },
        lualine_y = { "location" },
        lualine_z = { "progress" },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { file_name },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    extensions = {},
})
