-- =============================================================================
-- LEADERS & KEYMAP WRAPPER (Optimized for Colemak-DH)
-- =============================================================================
vim.g.mapleader = "<C-c>" -- Master Action Prefix
vim.g.maplocalleader = [[<\]]

function map(mode, lhs, rhs, desc)
	vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc })
end

-- =============================================================================
-- THE RE-ASSIGNED COMMA (",") WORKSPACE HOTKEYS
-- =============================================================================
map("n", ",me", "<cmd>messages<cr>", "Show recent errors/messages")
map("n", ",w", "<CMD>update<CR>", "Save file")
map("n", ",q", "<CMD>q<CR>", "Quit window")
map("n", ",c", "<CMD>RunCode<CR>", "Run Code Runner Engine")

map("i", "<C-i>", "<Right>", "")

-- Mini.files (Assigned to the Comma stack for single-hand filesystem travel)
map("n", ",f", function()
	require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
end, "Open Mini.files (Current Buffer Path)")
-- map("n", ",t", function() require("mini.files").open(vim.uv.cwd(), true) end, "Open Mini.files (Project Workspace Root)")

map("n", "<C-c>v", "<CMD>vsplit<CR>", "Vertical split")
map("n", "<C-c>h", "<CMD>split<CR>", "Horizontal split")

-- Window Resizing (Arrow keys + Shift)
map("n", "<S-Left>", "<C-w>>")
map("n", "<S-Right>", "<C-w><")
map("n", "<S-Up>", "<C-w>-")
map("n", "<S-Down>", "<C-w>+")

-- Navigation & Cleaning
map("t", "<esc><esc>", [[<C-\><C-n>]], "Exit terminal mode")
map("n", "<C-c>no", "<CMD>nohlsearch<CR>", "Clear highlights")
map("n", "<c-z>", "<nop>", "Disable accidental suspension")
map("i", "<D-Space>", "", "Disable space bind drop")
-- map("n", "<C-d>", "<C-d>zz", "Scroll half screen down and center cursor")
-- map("n", "<C-u>", "<C-u>zz", "Scroll half screen up and center cursor")

-- =============================================================================
-- SYSTEM CLIPBOARD SYSTEM (Pure Lua)
-- =============================================================================
map("n", "<C-c>Y", '"+yg_', "Copy to end of line")
map("n", "<C-c>yG", '"+yG', "Copy file")
map("v", "<C-c>y", '"+y', "Copy")
map("n", "<C-c>yy", '"+yy', "Copy current line")
map("n", "<C-c>P", '"+P', "Paste before cursor")
map("v", "<C-c>p", '"+p', "Visual paste replace")
map("v", "<C-c>P", '"+P', "Visual paste before")

-- =============================================================================
-- C/C++ SMART RUNNERS VIA SNACKS TERMINAL (Mapped to ,g for right-hand access)
-- =============================================================================
local function run_in_snacks_term(cmd)
	require("snacks").terminal(cmd, { win = { style = "terminal", position = "float", border = "rounded" } })
end

local c_cpp_group = vim.api.nvim_create_augroup("CCppRunners", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	group = c_cpp_group,
	pattern = "cpp",
	callback = function()
		map("n", ",g", function()
			local file_root = vim.fn.expand("%:r")
			local file_path = vim.fn.expand("%")
			local project = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
			-- run_in_snacks_term(string.format("g++ -g -std=c++23 -o %s %s && clear && gdb %s ; exit", file_root, file_path, file_root))
			run_in_snacks_term(
				string.format("g++ -g -std=c++23 src/*.cpp -o %s && clear && gdb ./%s ; exit", project, project)
			)
		end, "Compile & Debug C++ via GDB")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = c_cpp_group,
	pattern = "c",
	callback = function()
		map("n", ",g", function()
			local file_root = vim.fn.expand("%:r")
			local file_path = vim.fn.expand("%")
			run_in_snacks_term(
				string.format(
					"gcc -g --pedantic -Wall -Werror -o %s %s && clear && gdb %s ; exit",
					file_root,
					file_path,
					file_root
				)
			)
		end, "Compile & Debug C via GDB")
	end,
})

-- Snacks Functional Replacements
map("n", "<C-c>0", function()
	require("snacks").bufdelete()
end, "Close buffer safely")
map("n", "<C-c>zz", function()
	require("snacks").zen()
end, "Toggle Zen Mode")
map("n", "<C-c>zl", function()
	if vim.g.snacks_dim_active then
		require("snacks").dim.disable()
		vim.g.snacks_dim_active = false
	else
		require("snacks").dim.enable()
		vim.g.snacks_dim_active = true
	end
end, "Toggle Limelight Dimming (Pure Silent)")

-- Vim-plug bindings
map("n", "<C-c>ui", "<CMD>PlugInstall<CR>", "Plug Install")
map("n", "<C-c>us", "<CMD>PlugStatus<CR>", "Plug Status")
map("n", "<C-c>uc", "<CMD>PlugClean<CR>", "Plug Clean")
map("n", "<C-c>uu", "<CMD>PlugUpdate<CR>", "Plug Update")

-- Git & External Navigation
map("n", "<C-c>ng", "<CMD>Neogit<CR>", "Open Neogit Layout")
vim.g.undotree_SetFocusWhenToggle = 1
map("n", "<C-c>ut", "<CMD>UndotreeToggle<CR>", "Toggle Undotree")

-- FZF-Lua Deep Stack
map("n", "<C-c>m", "<CMD>FzfLua<CR>", "FzfLua Hub Layout")
map("n", "<C-c>s", "<CMD>FzfLua grep_curbuf<CR>", "Search inside current file") -- Swapped from / to s for Colemak speed
map("n", "<C-c>/", "<CMD>FzfLua live_grep<CR>", "Global Search Project Text")
map("n", "<C-c>b", "<CMD>FzfLua buffers<CR>", "Switch active open buffers")
map("n", "<C-c>f", "<CMD>FzfLua files<CR>", "Find files by name")
map("n", "<C-c>d", "<CMD>FzfLua lsp_document_diagnostics<CR>", "LSP File Errors")
map("n", "<C-c>Uc", "<CMD>FzfLua colorschemes<CR>", "Cycle Themes")
map("n", "<C-c>[", "<CMD>TodoFzfLua<CR>", "Search TODO markers")

-- =============================================================================
-- EXTERNAL COMPILER AUTOMATIONS
-- =============================================================================
-- Typst PDF preview script
vim.api.nvim_create_user_command("OpenPdf", function()
	local filepath = vim.api.nvim_buf_get_name(0)
	if filepath:match("%.typ$") then
		local pdf_path = filepath:gsub("%.typ$", ".pdf")
		vim.system({ "open", pdf_path })
	end
end, {})
vim.keymap.set({ "n", "t" }, "<C-c>nt", function()
	Snacks.terminal(nil, {
		win = {
			position = "float",
			border = "rounded", -- Options: "single", "double", "rounded", "solid", "shadow"
			height = 0.75, -- 75% of screen height
			width = 0.75, -- 75% of screen width
		},
	})
end, { desc = "Toggle Floating Terminal" })
map("n", "<C-c>tp", "<CMD>OpenPdf<CR>", "Preview Typst Document PDF")

vim.keymap.set("n", ",sw", function()
	local word = vim.fn.expand("<cword>")
	if word ~= "" then
		-- Construct the raw search string: /MATCH:<CR>
		local search_keys = word .. ":"

		-- Feed the keys directly to the command line
		vim.api.nvim_feedkeys(
			"/" .. search_keys .. vim.api.nvim_replace_termcodes("<CR>", true, false, true),
			"n",
			false
		)
	end
end, { desc = "Search file for word under cursor ending with ':'" })
