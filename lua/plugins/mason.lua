return {
    "mason-org/mason.nvim",
    dependencies = { "stevearc/dressing.nvim" },
    opts = {
		ui = {
			icons = {
				package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
			}
		}
	}
}
