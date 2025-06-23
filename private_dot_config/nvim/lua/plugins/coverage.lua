return {
  "andythigpen/nvim-coverage",
  version = "*",
  config = function()
    require("coverage").setup({
      auto_reload = true,
    })
  end,
  keys = {
    { "<leader>cc", desc = "Coverage" },
    { "<leader>ccc", "<cmd>Coverage<cr>", desc = "Load and display Coverage" },
    { "<leader>ccC", "<cmd>Coverage<cr>", desc = "Clear Coverage" },
    { "<leader>cct", "<cmd>CoverageTrigger<cr>", desc = "Toggle display Coverage" },
    { "<leader>ccS", "<cmd>CoverageSummary<cr>", desc = "Display Coverage Summary" },
    { "<leader>ccs", "<cmd>CoverageShow<cr>", desc = "Display Coverage" },
    { "<leader>cch", "<cmd>CoverageHide<cr>", desc = "Toggle display Coverage" },
    { "<leader>ccl", "<cmd>CoverageLoad<cr>", desc = "Load Coverage" },
  },
}
