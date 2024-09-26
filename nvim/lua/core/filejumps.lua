local function OpenInbox()
    vim.cmd('edit ~/Documents/org/inbox.org')
end

local function OpenBuffer()
    vim.cmd('edit ~/Documents/org/buffer.org')
end


local function OpenBatch()
    vim.cmd('edit ~/Documents/org/batch.org')
end

local function OpenSchedule()
    vim.cmd('edit ~/Documents/org/schedule.org')
end

local function OpenNotes()
        -- Use Telescope's builtin `find_files` function and pass the `cwd` (current working directory) argument
    require('telescope.builtin').find_files({
    cwd = "~/Documents/notes/"
    })
end

vim.api.nvim_create_user_command('OpenInbox', OpenInbox, {})
vim.api.nvim_create_user_command('OpenBuffer', OpenBuffer, {})
vim.api.nvim_create_user_command('OpenBatch', OpenBatch, {})
vim.api.nvim_create_user_command('OpenSchedule', OpenSchedule, {})
vim.api.nvim_create_user_command('OpenNotes', OpenNotes, {})

vim.api.nvim_set_keymap('n', '<leader>gi', ':OpenInbox<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gbu', ':OpenBuffer<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gba', ':OpenBatch<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':OpenSchedule<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nf', ':OpenNotes<CR>', { noremap = true, silent = true })
