local options ={
	backup =false,			-- creates a backup file
	clipboard ="unnamedplus",	-- allows neovim to acces the system clipboard
	cmdheight =2,			-- space (numer lines) in command line for displaying messages
	--completeopt = { "menuone, "noselect"}, --for cmp supposedly
	fileencoding = "utf-8", 	-- encoding
	--hlsearch = true,		-- highlight all matches on previos search pattern
	ignorecase =true, 		-- ignore case in search pattern
	--mouse = "a", 			-- allow the mouse to be used in neovim
	pumheight = 10,			-- pop up men height on status bar
	showmode = false,		-- no need for showing up thinks like -- INSERT -- anymore
	showtabline = 2,		-- always show tabs*
	smartcase = true,		-- smart case*
	smartindent = true,		-- make indenting smarter again*j
	splitbelow = true,		-- force all horitzonal split to go below current window
	splitright = true,		-- force all vertical split to go to the righe of current window
	swapfile = false,		-- not creates a swap file
	timeoutlen = 300,		-- time to wait for a mapped sequence to complete ( in millisecons )
	undofile = true,		-- enable persistend undo*
	updatetime = 300,		-- fastr completion (4000 default)
	writebackup = false,		-- if a files is being edited bay another program, it is not assowed to be edited
	expandtab = true,		-- convert tabs to spaces*
	shiftwidth = 2,			-- insert 2 spaces
	cursorline = false,		-- hightlight the current line
	number = true,			-- show number lines
	numberwidth = 2,		-- set number column with to 2 "default 4"
	signcolumn = "yes",		-- always show the sing column, otherwise it wold shift tthe text each time
	wrap = true,
	linebreak = true,		-- companion to wrap, don't split words
	linebreak = true,		-- companion to wrap, don't split words
	scrolloff = 8,                  -- minimal number of sc  reen lines to keep above and below the cursor
        sidescrolloff = 8,              -- minimal number of sc  reen columns either side of cursor if wrap is `false`
        guifont = "monospace:h17",      -- the font used in gra  phical neovim applications
        whichwrap = "bs<>[]hl",         -- which "horizontal" k  eys are allowed to travel to prev/next line
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
  -- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
  vim.opt.shortmess:append "c"                           -- don't give |ins-completion-menu| messages
  vim.opt.iskeyword:append "-"                           -- hyphenated words recognized by searches
  vim.opt.formatoptions:remove({ "c", "r", "o" })        -- don't insert the current comment leader automatically for auto-wrapping comments usin  g 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
  vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- separate vim plugins from neovim in case vim still in use
