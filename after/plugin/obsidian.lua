require("obsidian").setup({
	dir = "$HOME/Documents/Vaults/DataStash/",
	notes_subdir = "000 Notes",
	-- Optional, customize how names/IDs for new notes are created.k
	note_id_func = function(title)
		-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
		-- In this case a note with the title 'My new note' will be given an ID that looks
		-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
		local suffix = ""
		if title ~= nil then
			-- If title is given, transform it into valid file name.
			suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
		else
			-- If title is nil, just add 4 random uppercase letters to the suffix.
			for _ = 1, 4 do
				suffix = suffix .. string.char(math.random(65, 90))
			end
		end
		return suffix
	end,

	daily_notes = {
		-- Optional, if you keep daily notes in a separate directory.
		folder = "001 Daily Life/Journal/Daily/",
		-- Optional, if you want to change the date format for the ID of daily notes.
		date_format = "%Y-%m-%d",
		-- Optional, if you want to change the date format of the default alias of daily notes.
		alias_format = "%B %-d, %Y",
	},

	-- templates = {
	-- 	subdir = 'Templates',
	-- 	date_format = "%Y-%m-%d",
	-- },

	attachments = {
		img_folder = "100 Attachments",
	}

})

vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>on", ":ObsidianNew ")
