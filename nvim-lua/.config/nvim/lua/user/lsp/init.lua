local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

mason.setup()
require("user.lsp.mason-lspconfig")
require("user.lsp.handlers").setup()
-- require("user.lsp.null-ls")
