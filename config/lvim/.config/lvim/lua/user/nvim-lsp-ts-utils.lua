local M = {}
M.config = function()
	local nvim_lsp = require("lspconfig")

	-- make sure to only run this once!
	nvim_lsp.tsserver.setup({
		on_attach = function(client, bufnr)
			-- disable tsserver formatting if you plan on formatting via null-ls
			client.resolved_capabilities.document_formatting = false
			client.resolved_capabilities.document_range_formatting = false

			local ts_utils = require("nvim-lsp-ts-utils")

			-- defaults
		end,
	})
end

return M
