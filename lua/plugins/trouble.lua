return {
    "folke/trouble.nvim",
    config = function()
        vim.keymap.set("n", "<leader>t", function() require("trouble").toggle("workspace_diagnostics") end)
        require("trouble").setup {
            icons = true,
        }
    end
}
