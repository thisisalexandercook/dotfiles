return {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',

    config = function()

    local treesitter = require("nvim-treesitter.configs")


    treesitter.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "bash", "java" },

        auto_isntall = true,
        highlight = {enable = true},
        indent = {enable = true},
    })

  end,

}
