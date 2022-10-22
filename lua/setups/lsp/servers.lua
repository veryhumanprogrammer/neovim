  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  local function on_attach(client, bufnr)
    require("lsp-inlayhints").on_attach(client, bufnr)
  end

  require("nvim-lsp-installer").setup {}
  local lspconfig = require("lspconfig")
  lspconfig.sumneko_lua.setup { on_attach = on_attach, capabilites = capabilities }
  lspconfig.tsserver.setup { on_attach = on_attach, capabilities = capabilities }

  local rt = require("rust-tools")

  rt.setup({
    server = {
      on_attach = function(_, bufnr)
      end,
    },
  })

