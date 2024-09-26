function OpenOrCreateDailyFile()
    -- Get today's date in the format of YYYY-MM-DD for the filename
    local date_filename = os.date("%Y-%m-%d")
    -- Get today's date in a more readable format for the title
    local date_title = os.date("%B %d, %Y") -- Example: February 08, 2024
    -- Get today's date in a format suitable for the 'date' field in frontmatter
    local date_iso = os.date("%Y-%m-%d") -- Example: 2024-09-23

    -- Construct the file path with today's date
    local filepath = os.getenv("HOME") .. "/Documents/notes/journal/" .. date_filename .. ".md"

    -- Check if the file exists
    local f = io.open(filepath, "r")
    if f then
        -- If the file exists, close the file handle
        f:close()
    else
        -- Create the directory structure if it doesn't exist
        os.execute("mkdir -p " .. string.match(filepath, "(.+)/[^/]*$"))
        -- If the file does not exist, create it and write the frontmatter
        f = io.open(filepath, "w")
        -- Write YAML frontmatter with title, author, and date
        f:write("---\n")
        f:write("title: \"" .. date_title .. " Journal\"\n")
        f:write("author:\n")
        f:write("  - Alex Cook\n") -- Author as a list
        f:write("date: " .. date_iso .. "\n")
        f:write("...\n\n")
        f:close()
        print("Journal Created: " .. filepath)
    end
    -- Use Neovim command to open the file
    vim.cmd('edit ' .. filepath)
end

-- Create a Neovim command that calls the Lua function for the daily file with frontmatter
vim.api.nvim_create_user_command('OpenOrCreateDaily', OpenOrCreateDailyFile, {})
-- Map the <leader>oj key combination to the OpenOrCreateDaily command
vim.api.nvim_set_keymap('n', '<leader>oj', ':OpenOrCreateDaily<CR>', { noremap = true, silent = true })
