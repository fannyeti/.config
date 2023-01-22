local status, zenMode = pcall(require, "zen-mode")
if not status then
    return
end

zenMode.setup({
    window = {
        width = 86,
        options = {
            signcolumn = "yes",
            number = true,
            relativenumber = true,
        },
    },
})

vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<cr>", { silent = true })
