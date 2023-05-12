local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

local lspconfig = require("lspconfig")

mason_lspconfig.setup()

local opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}

lspconfig.flow.setup(opts)


local function setup(server_name)

	 if server_name == "tsserver" then
	 	local tsserver_opts = require("user.lsp.settings.tsserver")
	 	opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
	 end

	 if server_name == "jsonls" then
	 	local jsonls_opts = require("user.lsp.settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 end

	 if server_name == "lua_ls" then
	 	local sumneko_opts = require("user.lsp.settings.lua_ls")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 end

	 if server_name == "pyright" then
	 	local pyright_opts = require("user.lsp.settings.pyright")
	 	opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	 end

   lspconfig[server_name].setup(opts)
end

mason_lspconfig.setup_handlers { setup }
