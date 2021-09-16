local M = {}

M.config = function()
	require("kommentary.config").configure_language("javascript", {
		single_line_comment_string = "auto",
		multi_line_comment_strings = "auto",
		hook_function = function()
			require("ts_context_commentstring.internal").update_commentstring()
		end,
	})
	require("kommentary.config").configure_language("typescriptreact", {
		single_line_comment_string = "auto",
		multi_line_comment_strings = "auto",
		hook_function = function()
			require("ts_context_commentstring.internal").update_commentstring()
		end,
	})
	require("kommentary.config").configure_language("html", {
		single_line_comment_string = "auto",
		multi_line_comment_strings = "auto",
		hook_function = function()
			require("ts_context_commentstring.internal").update_commentstring()
		end,
	})
	require("kommentary.config").configure_language("lua", {
		prefer_single_line_comments = true,
	})
end

return M
