vim.cmd("colorscheme duskfox")

-- require("transparent").setup({})


-- require("headlines").setup({
--     markdown = {
--         -- headline_highlights = {
--         --     "Headline1",
--         --     "Headline2",
--         --     "Headline3",
--         --     "Headline4",
--         --     "Headline5",
--         --     "Headline6",
--         -- },
--         codeblock_highlight = "CodeBlock",
--         dash_highlight = "Dash",
--         quote_highlight = "Quote",
--     },
-- })

require('lualine').setup {
  options = {
	icons_enabled = true,
  }
}

