return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			local f = require("null-ls").builtins.formatting
			local d = require("null-ls").builtins.diagnostics
			local c = require("null-ls").builtins.completion

			null_ls.setup({
				sources = {
					-- Formatting
					f.asmfmt,
					f.black,
					f.clang_format,
					f.cmake_format,
					f.isort,
					f.ktlint,
					f.markdownlint,
					f.prettier,
					f.rubocop,
					f.sqlfmt,
					f.stylua,
					f.yamlfmt,

					-- Linting
					d.checkmake,
					d.checkstyle,
					d.cmake_lint,
					-- d.codespell,
					d.ktlint,
					d.rubocop,
					d.sqlfluff,
					d.vint,
					d.yamllint,

					-- Completion
					-- c.spell,
				},
			})
		end,
	},
}
