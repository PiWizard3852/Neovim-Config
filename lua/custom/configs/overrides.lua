local M = {}

M.treesitter = {
  ensure_installed = {
    'vim',
    'lua',
    'html',
    'css',
    'javascript',
    'typescript',
    'tsx',
    'json',
    'yaml',
    'python',
    'rust',
    'cpp',
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    'lua-language-server',
    'stylua',
    'html-lsp',
    'htmlbeautifier',
    'css-lsp',
    'tailwindcss-language-server',
    'typescript-language-server',
    'deno',
    'yapf',
    'yamllint',
    'python-lsp-server',
    'pylint',
    'rust-analyzer',
    'rustfmt',
    'cpplint',
    'clang-format',
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
