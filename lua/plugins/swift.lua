return {
  -- Swift language server (sourcekit-lsp ships with Xcode CLT, already on PATH)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          -- formatting is handled by pl-swiftformatting, not sourcekit-lsp
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
      },
    },
  },
  -- Swift treesitter grammar for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "swift")
    end,
  },
}
