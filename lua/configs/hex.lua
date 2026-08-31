require("hex").setup({
	uppercase = true, -- Use uppercase hex letters.
	group_bytes = 1, -- Number of bytes to group together.
	cols = 16, -- Number of columns to display.
	decimal_offset = true, -- Display decimal offsets.
})

map("n", "<C-c>hf", "<CMD> HexFormat <CR>", "HexFormat")
map("n", "<C-c>ht", "<CMD> HexFormat <CR>", "HexToggle")
