require("obsidian").setup({
	dir = "/mnt/storage/PersonalWebsite/PersonalWebsite/",
	notes_subdir = "000 Zettelkasten",

	daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "Daily Life/Journal/Daily/",
    -- Optional, if you want to change the date format for the ID of daily notes.
    date_format = "%Y-%m-%d",
    -- Optional, if you want to change the date format of the default alias of daily notes.
    alias_format = "%B %-d, %Y",
    -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
    templates = "Templates/Daily\\ Routine.md"
  },
  templates = {
	  subdir = 'Templates',
	  date_format = "%Y-%m-%d",
  },

})
