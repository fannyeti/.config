-- null
local status, null_ls = pcall(require, "null-ls")
if not status then
    return
end

local lsp = require("lsp-zero")
local null_opts = lsp.build_options('null-ls', {})

null_ls.setup({
    on_attach = function(client, bufnr)
        null_opts.on_attach(client, bufnr)
    end,
    sources = {
        --null_ls.builtins.formatting.rustfmt,
        --null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.eslint_d.with({
            diagnostics_format = '[eslint] #{m}\n(#{c})'
        }),
    },
})
