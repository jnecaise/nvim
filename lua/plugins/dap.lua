return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{ "rcarriga/nvim-dap-ui" },
			{ "williamboman/mason.nvim" },
			{ "jay-babu/mason-nvim-dap.nvim" },
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			local widgets = require("dap.ui.widgets")

			require("mason-nvim-dap").setup({
				automatic_setup = true,
				handlers = {},
				ensure_installed = {
					"bash",
					"codelldb",
					"python",
					"delve",
					"kotlin",
				},
			})

			vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Start/Continue" })
			vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug: Step Over" })
			vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug: Step Into" })
			vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug: Step Out" })
			vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
			vim.keymap.set("n", "<Leader>dB", dap.set_breakpoint, { desc = "Debug: Set Breakpoint" })
			vim.keymap.set("n", "<Leader>lp", function()
				require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end, { desc = "Debug: Set Log Point" })
			vim.keymap.set("n", "<Leader>dr", dap.repl.open, { desc = "Debug: Open REPL" })
			vim.keymap.set("n", "<Leader>dl", dap.run_last, { desc = "Debug: Run Last" })
			vim.keymap.set({ "n", "v" }, "<Leader>dh", widgets.hover, { desc = "Debug: Hover" })
			vim.keymap.set({ "n", "v" }, "<Leader>dp", widgets.preview, { desc = "Debug: Preview" })
			vim.keymap.set("n", "<Leader>df", function()
				widgets.centered_float(widgets.frames)
			end)
			vim.keymap.set("n", "<Leader>ds", function()
				widgets.centered_float(widgets.scopes)
			end)

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
}
