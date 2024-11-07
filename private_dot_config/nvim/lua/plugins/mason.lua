return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "actionlint",
      "shfmt",
      "terraform-ls",
      "tflint",
      "tfsec",
      "black",
      "isort",
      "clangd",
      "dockerfile-language-server",
      "helm-ls",
    },
  },
}
