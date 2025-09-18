
local L = require"lexers.lexer"
local M = {}
vis.ftdetect = M

-- Remove all suffixes to get the real extension/filename
vis.ftdetect.ignoresuffixes = {
	"~+$", "%.orig$", "%.bak$", "%.old$", "%.new$"
}

--[[
[lexer] = {
	alt_name = "" -- alt lexer name
	name = { lua pattern string list }
	cmd = { vis:command() list of strings }
	utility = {} list of patterns for the hashbang utility (no paths)
	datap = {} patterns for the first 256 characters of the file}
}
--]]
vis.ftdetect.filetypes = {
	actionscript = {},
	ada = {},
	antlr = {},
	apdl = {},
	apl = {},
	applescript = {},
	asciidoc = {},
	asm = {},
	asp = {},
	autoit = {},
	awk = {},
	bash = {},
	batch = {},
	bibtex = {},
	boo = {},
	c = {},
	caml = {},
	chuck = {},
	clojure = {},
	cmake = {
		name = { "%.cmake.in$", "%.ctest.in$" }
	},
	coffeescript = {},
	cpp = {},
	crontab = {
		cmd = { "set savemethod inplace" },
		name = { "^crontab.*$" }
	},
	crystal = {},
	csharp = {},
	css = {},
	cuda = {},
	d = {},
	dart = {},
	desktop = {},
	diff = {},
	dockerfile = {},
	dot = {},
	dsv = {},
	eiffel = {},
	elixir = {},
	elm = {},
	erlang = {},
	factor = {},
	fantom = {},
	faust = {},
	fennel = {},
	fish = {},
	forth = {},
	fortran = {},
	fsharp = {},
	fstab = {},
	gap = {},
	gemini = {},
	gettext = {},
	gherkin = {},
	["git-commit"] = {
		alt_name = "diff",
		cmd = { "set colorcolumn 72" },
	},
	["git-rebase"] = {},
	gleam = {},
	glsl = {},
	gnuplot = {},
	go = {},
	groovy = {},
	gtkrc = {},
	hare = {},
	haskell = {},
	html = {},
	icon = {},
	idl = {},
	inform = {},
	ini = {},
	io_lang = {},
	java = {},
	javascript = {},
	jq = {},
	json = {},
	jsp = {},
	julia = {},
	latex = {},
	ledger = {},
	less = {},
	lilypond = {},
	lisp = {},
	litcoffee = {},
	logtalk = {},
	lua = {
		utility = { "^lua%-?5?%d?$", "^lua%-?5%.%d$" }
	},
	mail = {},
	makefile = {},
	man = {},
	markdown = {},
	mediawiki = {},
	meson = {},
	modula2 = {},
	modula3 = {},
	moonscript = {},
	myrddin = {},
	nemerle = {},
	networkd = {},
	nim = {},
	nix = {},
	nsis = {},
	objective_c = {},
	org = {},
	pascal = {},
	perl = {},
	php = {},
	pico8 = {},
	pike = {},
	pkgbuild = {},
	pony = {},
	powershell = {},
	prolog = {},
	props = {},
	protobuf = {},
	ps = {},
	pure = {},
	python = {
		utility = { "^python%d?" }
	},
	r = {},
	rails = {},
	rc = {},
	reason = {},
	rebol = {},
	rest = {},
	rexx = {},
	rhtml = {},
	routeros = {},
	rpmspec = {},
	ruby = {},
	rust = {},
	sass = {},
	scala = {},
	scheme = {},
	smalltalk = {},
	sml = {},
	snobol4 = {},
	spin = {},
	sql = {},
	strace = {},
	systemd = {},
	taskpaper = {},
	tcl = {},
	texinfo = {},
	text = {},
	toml = {},
	typescript = {},
	typst = {},
	usfm = {},
	vala = {},
	vb = {},
	vcard = {},
	verilog = {},
	vhdl = {},
	wsf = {},
	xml = {},
	xs = {},
	xtend = {},
	yaml = {},
	zig = {}
}

-- complete filename, case sensitive
local filenames = {
	APKBUILD = 'bash',
	[".login"] = 'bash',
	profile = 'bash',
	['.profile'] = 'bash',
	mkshrc = 'bash',
	['.mkshrc'] = 'bash',
	['bash.bashrc'] = 'bash',
	['bash.bash.logout'] = 'bash',
	['.bash_profile'] = 'bash',
	['.bashrc'] = 'bash',
	['.bash_logout'] = 'bash',
	['.shinit'] = 'bash',
	['.xprofile'] = 'bash',
	xsin = 'xs',
	xsrc = 'xs',
	Vagrantfile = 'ruby',
	Dockerfile = 'dockerfile',
	group = 'dsv',
	gshadow = 'dsv',
	passwd = 'dsv',
	shadow = 'dsv',
	fstab = 'fstab',
	COMMIT_EDITMSG = 'git-commit',
	["git%-rebase%-todo"] = 'git-rebase',
	Jenkinsfile = 'groovy',
	GNUmakefile = 'makefile',
	makefile = 'makefile',
	Makefile = 'makefile',
	['meson.build'] = 'meson',
	['meson.options'] = 'meson',
	['meson_options.txt'] = 'meson',
	PKGBUILD = 'pkgbuild',
}
M.filenames = filenames

local extensions = L.detect_extensions
do
	local e = extensions
	-- local _ENV = e
--	e.fs = 'forth'
--	e.fs = 'fsharp'
	e["1p"] = "man"
	e["2p"] = "man"
	e["3p"] = "man"
	e["4p"] = "man"
	e["5p"] = "man"
	e["6p"] = "man"
	e["7p"] = "man"
	e["8p"] = "man"
	e["9p"] = "man"
	e.adoc = "asciidoc"
	e.cjs = "javascript"
	e.conf = "ini"
	e.container = "systemd"
	e.def = "modula2"
	e.ebuild = "bash"
	e.eml = "mail"
	e.es = "rc"
	e.fth = "forth"
	e.glif = "xml"
	e.glsl = "glsl"
	e.h = "c"
	e.i3 = "modula3"
	e.ig = "modula3"
	e.ily = "lilypond"
	e.jsx = "javascript"
	e.m3 = "modula3"
	e.me = "man"
	e.meson = "meson"
	e.mg = "modula3"
	e.mjs = "javascript"
	e.mk = "makefile"
	e.mod = "modula2"
	e.mom = "man"
	e.ms = "man"
	e.plist = "xml"
	e.pro = "prolog"
	e.psm1 = "powershell"
	e.pyi = "python"
	e.pyx = "python"
	e.rc = "rc"
	e.rej = "diff"
	e.rkt = "scheme"
	e.sld = "scheme"
	e.sls = "scheme"
	e.ss = "scheme"
	e.sv = "verilog"
	e.tmac = "man"
	e.tsx = "typescript"
	e.txt = "text"
	e.typ = "typst"
	e.typst = "typst"
	e.usfm = "usfm"
	e.wiki = "mediawiki"
	e.xhtm = "html"
	M.extensions = e
end

do
	local p = L.detect_patterns
	p["^#.* by RouterOS"] = 'routeros'
	p["^execve%("] = 'strace'
end

-- Lookup table for mime [mime] = "lexer"
-- "text/" is prepended so you can omit it
local mimes = {
	gemini = "gemini",
	xml = "xml",
	["application/x-shellscript"] = "bash",
	["x-c"] = "c",
	["x-c++"] = "cpp",
	["x-coffee"] = "coffeescript",
	["x-css"] = "css",
	["x-haskell"] = "haskell",
	["x-html"] = "html",
	["x-json"] = "json",
	["x-lisp"] = "lisp",
	["x-lua"] = "lua",
	["x-makefile"] = "makefile",
	["x-markdown"] = "markdown",
	["x-moon"] = "moonscript",
	["x-objc"] = "objective_c",
	["x-perl"] = "perl",
	["x-python"] = "python",
	["x-ruby"] = "ruby",
	["x-rust"] = "rust",
	["x-sass"] = "sass",
	["x-scala"] = "scala",
	["x-script.python"] = "python",
	["x-scss"] = "sass",
	["x-shellscript"] = "bash",
	["x-tex"] = "latex",
	["x-yaml"] = "yaml",
}
M.mimes = mimes

local utilities = {
	awk = 'awk',
	mawk = 'awk',
	nawk = 'awk',
	gawk = 'awk',
	goawk = 'awk',

	sh = 'bash',
	bash = 'bash',
	ash = 'bash',
	ksh = 'bash',
	mksh = 'bash',
	csh = 'bash',
	tcsh = 'bash',
	zsh = 'bash',
	dash = 'bash',

	make = 'make',

	python = 'python',
	python2 = 'python',
	python3 = 'python',

	rc = 'rc',
	es = 'rc',

	tclsh = 'tcl',
	jimsh = 'tcl',

	lua = 'lua',

	octave = 'matlab',
	perl = 'perl',
	php = 'php',
	ruby = 'ruby',
}
M.utils = utilities

-- string.find(table, pattern)
local function TStringFind(tbl, subject)
	for _, pattern in ipairs(tbl or {}) do
		if subject:find(pattern) then
			return true
		end
	end
	return false
end

--[[ hashbang check
	hashbangs only have PATH <SPACE> ARG
		if PATH matches /env, utility should be in args
			POSIX does not have -S, but BSDs/Linux seem to
			All do seem to have name=value
			So far, this does the rudimentary job of parsing env args
			for most cases, but its a bandaid
			discard first arg if /-[^S]*S/; and all subsequent /=/
			NOTE: this means you can't have a command with /^-|=/
	return first field, which should be the utility.
	NOTE: long-options (GNUisms) unsupported
--]]
local function GetHashBang(data)
	local fullhb, utility = data:match"^#![ \t]*(/+[^/\n]+[^\n]*)"
	if fullhb then
		local i, field = 1, {}
		for m in fullhb:gmatch"%g+" do field[i],i = m,i+1 end
		-- NOTE: executables should not have a space (or =, see below)
		if field[1]:match"/env$" then
			table.remove(field,1)
			-- it is assumed that the first argument are short options, with -S inside
			if string.find(field[1] or "", "^%-[^S-]*S") then -- -S found
				table.remove(field,1)
				-- skip all name=value
				while string.find(field[1] or "","=") do
					table.remove(field,1)
				end
				-- (hopefully) whatever is left in field[1] should be the utility or nil
			end
		end
		utility = string.match(field[1] or "", "[^/]+$") -- remove filepath
	end
	return fullhb, utility
end

-- Returns syntax filetype
-- Correctness order:
-- utility -> datap -> detect -> filename -> extension -> mime
-- Some extensions are duplicated, so they are low priority.
-- Technically in terms of quickness it should be
-- extension -> filename -> utility -> hashbang -> mime

-- Mimes is supposed to be the most correct, but its a fork to file
-- Which is slow, and semi non-portable
local function Detect(win)
	local file = win.file
	local path = file.name -- filepath
	local mime

	-- pass first few bytes of file to custom file type detector functions
	local data = file:content(0, 256)
	if data and #data > 0 then
		local fullhb, utility = GetHashBang(data)
		if fullhb then
			if utility and utilities[utility] then
				return utilities[utility]
			end
			for lang, ft in pairs(M.filetypes) do
				if
					utility and TStringFind(ft.utility, utility)
					or TStringFind(ft.hashbang, fullhb)
					-- Same as below but saves us a loop
					or (ft.detect and ft.detect(file, data))
				then
					return lang
				end
			end
		else
			for lang, ft in pairs(M.filetypes) do
				if
					TStringFind(ft.datap, data)
					or type(ft.detect) == 'function' and ft.detect(file, data)
				then
					return lang
				end
			end
		end
	end

	if path and path~="" then
		local name = path and path:match("[^/]+$") -- filename
		if name then
			local unchanged
			while #name > 0 and name ~= unchanged do
				unchanged = name
				for _, pattern in ipairs(M.ignoresuffixes) do
					name = name:gsub(pattern, "")
				end
			end
		end

		if name and #name > 0 then
			if filenames[name] then return filenames[name] end

			local l = L.detect(name, data and #data>0 and data or "")
			if l then return l end

			-- detect filetype by filename ending with a configured extension
			local ext = name:match"%.([^%.]+)$"
			if ext then
				local lexer = extensions[ext] or extensions[ext:lower()]
				if lexer then return lexer end
			end

			-- detect filetype by filename pattern
			for lang, ft in pairs(M.filetypes) do
				for _, pattern in ipairs(ft.name or {}) do
					if name:find(pattern) then return lang end
				end
			end
		end

		-- run file(1) to determine mime type
		local fileh = io.popen(
			string.format(
				"file -bL --mime-type -- '%s'", path:gsub("'", "'\\''")
			)
		)
		mime = fileh:read('*l')
		fileh:close()
		if mime then
			local lexer = mimes[mime] or mimes["text/" .. mime]
			if lexer then return lexer end
		end
	end

	-- try text lexer as a last resort
	if (mime or 'text/plain'):match('^text/.+$') then
		return 'text'
	end

	return nil
end

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	local syntax = Detect(win)
	-- syntax is ftdetect.filetypes which has settings
	-- but its the lexer, which may not exist
	if syntax then
		local filetype = M.filetypes[syntax]
		for _, cmd in pairs(filetype.cmd or {}) do
			vis:command(cmd)
		end
		syntax = filetype.alt_name or syntax
		if package.searchpath("lexers." .. syntax, package.path) then
			win:set_syntax(syntax)
			return
		else
			vis:info(
				string.format(
					"Syntax '%s' not found", syntax
				)
			)
		end
	end
	win:set_syntax(nil)
	return nil
end)

