return {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require('render-markdown').setup({
    -- Checkboxes are a special instance of a 'list_item' that start with a 'shortcut_link'
    -- There are two special states for unchecked & checked defined in the markdown grammar
    checkbox = {
        -- Turn on / off checkbox state rendering
        enabled = true,
        custom = {
            todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo' },
            unckecked = { raw = '[ ]', rendered = '󰄱 ' , highlight = 'RenderMarkdownUnchecked' },
            checked = { raw = '[x]', rendered = '󰱒 ', highlight = 'RenderMarkdowChecked' },
        },
    },
})
    end
}
