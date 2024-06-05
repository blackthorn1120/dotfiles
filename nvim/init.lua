-- bootstrap lazy.nvim, LazyVim and my plugins
require("config.lazy")

-- fix error with nvim-lsp from calling workspace/ExecuteCommand and crashing rust-analyzer
vim.lsp.command["editor.action.triggerParameterHints"] = function()
	local ok, result = pcall(vim.lsp.buf.signature_help)
	if ok then
		return vim.NIL
	else
		return vim.lsp.rpc_response_error(vim.lsp.protocol.ErrorCodes.InternalError, result)
	end
end

-- Set color for inlay hints
vim.api.nvim_set_hl(0, "LspInlayHints", { fg = "#FFFFAA", bg = "#313244" })
