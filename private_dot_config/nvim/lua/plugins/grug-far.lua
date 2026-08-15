return {
  {
    "MagicDuck/grug-far.nvim",
    opts = {
      engines = {
        ripgrep = {
          -- Pass the --hidden flag to ripgrep by default
          extraArgs = "--hidden",
        },
      },
    },
  },
}
