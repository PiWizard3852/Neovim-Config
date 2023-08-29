local on_attach = require('plugins.configs.lspconfig').on_attach
local capabilities = require('plugins.configs.lspconfig').capabilities

local lspconfig = require 'lspconfig'

local servers = {
  'lua_ls',
  'html',
  'cssls',
  'tailwindcss',
  'tsserver',
  'jsonls',
  'yamlls',
  'pylyzer',
  'rust_analyzer',
  'sourcekit',
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
