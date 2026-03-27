return {
  "neovim/nvim-lspconfig",
  config = function ()
    vim.lsp.config("basedpyright", {
      capabilities = {
        general = {
          positionEncodings = { "utf-16" },
        },
      },
      settings = {
        basedpyright = {
          analysis = {
            autoSearchPaths = true,
            diagnosticMode = "openFilesOnly",
          },
        },
      },
    })

    vim.lsp.config("ruff", {
      capabilities = {
        general = {
          positionEncodings = { "utf-16" },
        },
      },
      on_attach = function(client)
        client.server_capabilities.hoverProvider = false
      end,
    })

    vim.lsp.config("ts_ls", {
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end,
    })

    vim.lsp.config("eslint", {
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end,
      settings = {
        format = false,
      }
    })

  end,
}
