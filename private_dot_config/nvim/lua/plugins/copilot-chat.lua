return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      -- Show help/prompts in a floating window or sidebar
      window = { layout = "vertical", width = 0.4 },
    },
    keys = {
      -- Explain Code
      { "<leader>ae", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code", mode = { "n", "v" } },
      -- Review Code
      { "<leader>ar", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code", mode = { "n", "v" } },
      -- Custom Prompt (Fix Bugs)
      { "<leader>af", "<cmd>CopilotChatFix<cr>", desc = "CopilotChat - Fix bugs", mode = { "n", "v" } },
      -- Open Chat
      { "<leader>aa", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat - Toggle", mode = { "n", "v" } },
    },
  },
}
