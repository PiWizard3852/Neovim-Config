local null_ls = require 'null-ls'

local b = null_ls.builtins

local sources = {
  b.formatting.stylua,

  b.formatting.htmlbeautifier.with {
    filetypes = { 'html' },
  },

  b.formatting.deno_fmt.with {
    extra_args = { '--no-semicolons', '--single-quote' },
  },

  b.formatting.rustfmt,

  b.formatting.clang_format,
}

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

null_ls.setup {
  debug = true,
  sources = sources,

  on_attach = function(client, bufnr)
    if client.supports_method 'textDocument/formatting' then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = false }
        end,
      })
    end
  end,
}
