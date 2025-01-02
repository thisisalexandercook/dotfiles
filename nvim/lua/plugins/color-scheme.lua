return
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "day",  -- Options: "storm", "moon", "night", "day"

    },
    config = function(_, opts)
      -- Setup tokyonight with the provided options
      require("tokyonight").setup(opts)

      -- Apply the colorscheme
      vim.cmd("colorscheme tokyonight-day")
    end,
}
