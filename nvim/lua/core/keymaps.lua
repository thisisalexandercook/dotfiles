-- Set leader key to space
vim.g.mapleader = ' '

local keymap = vim.keymap

-- Oil
vim.keymap.set('n', '<leader>fd', ':Oil<CR>', { desc = 'open oil browser' })

-- Snacks
vim.keymap.set('n', '<leader>lg', ':lua Snacks.lazygit.open()<CR>', { desc = 'open lazygit' })
vim.keymap.set('n', '<leader>tt', ':lua Snacks.terminal.toggle()<CR>', { desc = 'toggle terminal' })
vim.keymap.set('n', '<leader>gb', ':lua Snacks.git.blame_line()<CR>', { desc = 'show git blame line' })

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})                -- fuzzy find files in project
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})                 -- grep file contents in project
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})                   -- fuzzy find open buffers
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})                 -- fuzzy find help tags
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {}) -- fuzzy find in current file buffer
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {})      -- fuzzy find LSP/class symbols
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, {})        -- fuzzy find LSP/incoming calls
keymap.set('n', '<leader>fm', function()
    require('telescope.builtin').treesitter { symbols = { 'function', 'method' } }
end) -- fuzzy find methods in current class
keymap.set('n', '<leader>fc', function()
    require('telescope.builtin').find_files {
        cwd = vim.fn.stdpath 'config',
    }
end) -- fuzzy seach over config files
keymap.set('n', '<leader>fn', function()
    require('telescope.builtin').find_files {
        cwd = '/Users/alex/Documents/notes/',
    }
end) -- fuzzy seach over notes
keymap.set('n', '<leader>fp', require('telescope.builtin').git_files, {}) -- Fuzzy search through the output of git ls-files command, respects .gitignore

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')

-- Debugging
keymap.set('n', '<leader>bb', "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set('n', '<leader>bc', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set('n', '<leader>bl', "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set('n', '<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set('n', '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>')
keymap.set('n', '<leader>dc', "<cmd>lua require'dap'.continue()<cr>")
keymap.set('n', '<leader>dj', "<cmd>lua require'dap'.step_over()<cr>")
keymap.set('n', '<leader>dk', "<cmd>lua require'dap'.step_into()<cr>")
keymap.set('n', '<leader>do', "<cmd>lua require'dap'.step_out()<cr>")
keymap.set('n', '<leader>dd', function()
    require('dap').disconnect()
    require('dapui').close()
end)
keymap.set('n', '<leader>dt', function()
    require('dap').terminate()
    require('dapui').close()
end)
keymap.set('n', '<leader>dr', "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set('n', '<leader>dl', "<cmd>lua require'dap'.run_last()<cr>")
keymap.set('n', '<leader>di', function()
    require('dap.ui.widgets').hover()
end)
keymap.set('n', '<leader>d?', function()
    local widgets = require 'dap.ui.widgets'
    widgets.centered_float(widgets.scopes)
end)
keymap.set('n', '<leader>df', '<cmd>Telescope dap frames<cr>')
keymap.set('n', '<leader>dh', '<cmd>Telescope dap commands<cr>')
keymap.set('n', '<leader>de', function()
    require('telescope.builtin').diagnostics { default_text = ':E:' }
end)
