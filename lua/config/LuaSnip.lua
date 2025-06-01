-- LuaSnip settings
local ls = require("luasnip")

-- Keymaps
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

-- Load snippets from stdpath("config")/LuaSnip/
local luasnippath = vim.fn.stdpath("config") .. "/LuaSnip/"
require("luasnip.loaders.from_lua").load({paths = luasnippath})
