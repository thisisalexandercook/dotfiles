function OpenInbox()
    local filepath = os.getenv("HOME") .. "/Documents/notes/inbox.md"
    vim.cmd('edit ' .. filepath)
end

vim.api.nvim_create_user_command("OpenInbox", OpenInbox, {})
vim.api.nvim_set_keymap('n', '<leader>oi',':OpenInbox<CR>', {noremap = true, silent = true})

