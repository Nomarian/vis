
local M = {}
vis.ftdetect = M

vis.ftdetect.ignoresuffixes = {
	"~+$", "%.orig$", "%.bak$", "%.old$", "%.new$"
}

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
  awk = {
    hashbang = { "^/usr/bin/[mng]awk%s+%-f" },
    utility = { "^[mgn]?awk$", "^goawk$" }
  },
  bash = {
    name = { "^APKBUILD$", "^.bashrc$", "^.bash_profile$" },
    utility = { "^[db]ash$", "^sh$", "^t?csh$", "^zsh$" }
  },
  batch = {},
  bibtex = {},
  boo = {},
  c = {
  },
  caml = {},
  chuck = {},
  clojure = {},
  cmake = {
    name = { "%.cmake.in$", "%.ctest.in$" }
  },
  coffeescript = {
  },
  cpp = {
  },
  crontab = {
    cmd = { "set savemethod inplace" },
    name = { "^crontab.*$" }
  },
  crystal = {},
  csharp = {},
  css = {
  },
  cuda = {},
  d = {},
  dart = {},
  desktop = {},
  diff = {},
  dockerfile = {
    name = { "^Dockerfile$" }
  },
  dot = {},
  dsv = {
    name = { "^group$", "^gshadow$", "^passwd$", "^shadow$" }
  },
  eiffel = {},
  elixir = {},
  elm = {},
  erlang = {},
  factor = {
  },
  fantom = {},
  faust = {},
  fennel = {},
  fish = {
  },
  forth = {},
  fortran = {},
  fsharp = {},
  fstab = {
    name = { "^fstab$" }
  },
  gap = {},
  gemini = {
  },
  gettext = {},
  gherkin = {},
  ["git-commit"] = {
    alt_name = "diff",
    cmd = { "set colorcolumn 72" },
    name = { "^COMMIT_EDITMSG$" }
  },
  ["git-rebase"] = {
    name = { "git%-rebase%-todo" }
  },
  gleam = {},
  glsl = {
  },
  gnuplot = {},
  go = {},
  groovy = {
    name = { "^Jenkinsfile$" }
  },
  gtkrc = {},
  hare = {},
  haskell = {
  },
  html = {
  },
  icon = {},
  idl = {},
  inform = {},
  ini = {},
  io_lang = {},
  java = {},
  javascript = {},
  jq = {},
  json = {
  },
  jsp = {},
  julia = {},
  latex = {
  },
  ledger = {},
  less = {},
  lilypond = {},
  lisp = {
  },
  litcoffee = {},
  logtalk = {},
  lua = {
    utility = { "^lua%-?5?%d?$", "^lua%-?5%.%d$" }
  },
  mail = {},
  makefile = {
    name = { "^GNUmakefile$", "^makefile$", "^Makefile$" },
    hashbang = { "^#!/usr/bin/make" },
    utility = { "^make$" }
  },
  man = {
  },
  markdown = {
  },
  mediawiki = {},
  meson = {
    name = { "^meson%.build$", "^meson_options%.txt$", "^meson%.options$" }
  },
  modula2 = {},
  modula3 = {},
  moonscript = {
  },
  myrddin = {},
  nemerle = {},
  networkd = {},
  nim = {},
  nix = {},
  nsis = {},
  objective_c = {
  },
  org = {},
  pascal = {},
  perl = {
  },
  php = {},
  pico8 = {},
  pike = {},
  pkgbuild = {
    name = { "^PKGBUILD$" }
  },
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
  r = {
    name = { "Rout.save", "Rout.fail" }
  },
  rc = {
    utility = { "^rc$" }
  },
  reason = {},
  rebol = {},
  rest = {},
  rexx = {},
  rhtml = {},
  routeros = {
	detect = function(_, data)
		return data:match("^#.* by RouterOS")
	end,
  },
  rpmspec = {},
  ruby = {
    name = { "^Vagrantfile$" },
  },
  rust = {
  },
  sass = {
  },
  scala = {
  },
  scheme = {},
  smalltalk = {},
  sml = {},
  snobol4 = {},
  spin = {},
  sql = {},
  strace = {
	detect = function(_, data)
		return data:match("^execve%(")
	end
  },
  systemd = {},
  taskpaper = {},
  tcl = {
    utility = { "^tclsh$", "^jimsh$" }
  },
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
  xml = {
  },
  xs = {
    name = { "^%.xsin$", "^%.xsrc$" }
  },
  xtend = {},
  yaml = {
  },
  zig = {}
}

local extensions = {
	gmi = 'gmi',
	glsl = 'glsl',
	glslf = 'glslf',
	glslv = 'glslv',
	htm = 'html',
	shtm = 'html',
	xhtm = 'html',
	shtml = 'html',
	xhtml = 'html',
	['1'] = 'man',
	['2'] = 'man',
	['3'] = 'man',
	['4'] = 'man',
	['5'] = 'man',
	['6'] = 'man',
	['7'] = 'man',
	['8'] = 'man',
	['9'] = 'man',
	['1x'] = 'man',
	['2x'] = 'man',
	['3x'] = 'man',
	['4x'] = 'man',
	['5x'] = 'man',
	['6x'] = 'man',
	['7x'] = 'man',
	['8x'] = 'man',
	['9x'] = 'man',
	['1p'] = 'man',
	['2p'] = 'man',
	['3p'] = 'man',
	['4p'] = 'man',
	['5p'] = 'man',
	['6p'] = 'man',
	['7p'] = 'man',
	['8p'] = 'man',
	['9p'] = 'man',
	py = 'python',
	pyi = 'python',
	pyw = 'python',
	pyx = 'python',
	rsc = 'routeros',
	ASM = "asm",
	Dockerfile = "dockerfile",
	PKGBUILD = "pkgbuild",
	R = "r",
	C = "c",
	["c++"] = "cpp",
	["h++"] = "cpp",
	factor = "factor",
	Rakefile = "ruby",
	Rhistory = "r",
	Rout = "r",
	Rt = "r",
	S = "asm",
	SNO = "snobol4",
	a3x = "autoit",
	adb = "ada",
	adoc = "asciidoc",
	ads = "ada",
	al = "perl",
	ans = "apdl",
	apl = "apl",
	applescript = "applescript",
	as = "actionscript",
	asa = "vb",
	asc = "actionscript",
	asm = "asm",
	asp = "asp",
	au3 = "autoit",
	automount = "systemd",
	awk = "awk",
	bas = "vb",
	bash = "bash",
	bat = "batch",
	bbl = "latex",
	bib = "bibtex",
	boo = "boo",
	bsh = "java",
	caml = "caml",
	c = "c",
	cc = "cpp",
	cfg = "ini",
	changes = "smalltalk",
	cjs = "javascript",
	ck = "chuck",
	cl = "lisp",
	clj = "clojure",
	cljc = "clojure",
	cljs = "clojure",
	cls = "latex",
	cmake = "cmake",
	cmd = "batch",
	cnf = "ini",
	coffee = "coffeescript",
	conf = "ini",
	container = "systemd",
	cpp = "cpp",
	cr = "crystal",
	cs = "csharp",
	csh = "bash",
	css = "css",
	ctest = "cmake",
	ctl = "vb",
	cu = "cuda",
	cuh = "cuda",
	cxx = "cpp",
	d = "d",
	dart = "dart",
	ddl = "sql",
	def = "modula2",
	dem = "gnuplot",
	desktop = "desktop",
	device = "systemd",
	di = "d",
	diff = "diff",
	dob = "vb",
	dot = "dot",
	dpk = "pascal",
	dpr = "pascal",
	dsm = "vb",
	dsp = "faust",
	dsr = "vb",
	dtd = "xml",
	dtx = "latex",
	e = "eiffel",
	ebuild = "bash",
	edn = "clojure",
	eif = "eiffel",
	el = "lisp",
	elm = "elm",
	eml = "mail",
	eps = "ps",
	erb = "rhtml",
	erl = "erlang",
	es = "rc",
	ex = "elixir",
	exs = "elixir",
	f = "fortran",
	f03 = "fortran",
	f08 = "fortran",
	f77 = "fortran",
	f90 = "fortran",
	f95 = "fortran",
	fan = "fantom",
	feature = "gherkin",
	fish = "fish",
	fnl = "fennel",
	["for"] = "fortran",
	forth = "forth",
	fpp = "fortran",
	frm = "vb",
	frt = "forth",
	fs = "forth",
	fth = "forth",
	ftn = "fortran",
	fun = "sml",
	g = "antlr",
	g4 = "antlr",
	gap = "gap",
	gd = "gap",
	gi = "gap",
	gleam = "gleam",
	glif = "xml",
	go = "go",
	groovy = "groovy",
	gtkrc = "gtkrc",
	gvy = "groovy",
	h = "c",
	ha = "hare",
	hh = "cpp",
	hpp = "cpp",
	hrl = "erlang",
	hs = "haskell",
	hta = "asp",
	hxx = "cpp",
	i3 = "modula3",
	icn = "icon",
	idl = "idl",
	iface = "makefile",
	ig = "modula3",
	ily = "lilypond",
	inc = "php",
	inf = "ini",
	ini = "ini",
	inp = "apdl",
	ins = "latex",
	io = "io_lang",
	java = "java",
	jl = "julia",
	journal = "ledger",
	jq = "jq",
	js = "javascript",
	jsfl = "javascript",
	json = "json",
	jsp = "jsp",
	jsx = "javascript",
	ledger = "ledger",
	less = "less",
	lgt = "logtalk",
	link = "networkd",
	lisp = "lisp",
	litcoffee = "litcoffee",
	lsp = "lisp",
	ltx = "latex",
	lua = "lua",
	ly = "lilypond",
	m = "objective_c",
	m3 = "modula3",
	mac = "apdl",
	mak = "makefile",
	markdown = "markdown",
	md = "markdown",
	me = "man",
	meson = "meson",
	mg = "modula3",
	mjs = "javascript",
	mk = "makefile",
	ml = "caml",
	mli = "caml",
	mll = "caml",
	mly = "caml",
	mm = "objective_c",
	mod = "modula2",
	mom = "man",
	moon = "moonscript",
	mount = "systemd",
	ms = "man",
	myr = "myrddin",
	n = "nemerle",
	netdev = "networkd",
	network = "networkd",
	ni = "inform",
	nim = "nim",
	nix = "nix",
	nsh = "nsis",
	nsi = "nsis",
	nsis = "nsis",
	objc = "objective_c",
	odl = "idl",
	org = "org",
	orx = "rexx",
	p = "pascal",
	p8 = "pico8",
	pag = "vb",
	pas = "pascal",
	patch = "diff",
	path = "systemd",
	perl = "perl",
	php = "php",
	php3 = "php",
	php4 = "php",
	phtml = "php",
	pike = "pike",
	pl = "prolog",
	plist = "xml",
	plt = "gnuplot",
	pm = "perl",
	pmod = "pike",
	po = "gettext",
	pod = "perl",
	pony = "pony",
	pot = "gettext",
	pro = "prolog",
	prolog = "prolog",
	properties = "props",
	props = "props",
	proto = "protobuf",
	ps = "ps",
	ps1 = "powershell",
	psm1 = "powershell",
	pure = "pure",
	r = "rebol",
	rake = "ruby",
	rb = "ruby",
	rbw = "ruby",
	rc = "rc",
	re = "reason",
	reb = "rebol",
	reg = "ini",
	rej = "diff",
	rex = "rexx",
	rhtml = "rhtml",
	rkt = "scheme",
	rs = "rust",
	rst = "rest",
	s = "asm",
	sass = "sass",
	sc = "python",
	scala = "scala",
	sch = "scheme",
	scm = "scheme",
	scope = "systemd",
	scss = "sass",
	service = "systemd",
	sh = "bash",
	sig = "sml",
	sld = "scheme",
	slice = "systemd",
	sls = "scheme",
	sml = "sml",
	sno = "snobol4",
	socket = "systemd",
	sources = "smalltalk",
	spec = "rpmspec",
	spin = "spin",
	sql = "sql",
	ss = "scheme",
	st = "smalltalk",
	sty = "latex",
	sv = "verilog",
	svg = "xml",
	swap = "systemd",
	target = "systemd",
	taskpaper = "taskpaper",
	tcl = "tcl",
	tex = "latex",
	texi = "texinfo",
	timer = "systemd",
	tk = "tcl",
	tmac = "man",
	toml = "toml",
	ts = "typescript",
	tsx = "typescript",
	txt = "text",
	typ = "typst",
	typst = "typst",
	usfm = "usfm",
	v = "verilog",
	vala = "vala",
	vb = "vb",
	vba = "vb",
	vbs = "vb",
	vcard = "vcard",
	vcf = "vcard",
	ver = "verilog",
	vh = "vhdl",
	vhd = "vhdl",
	vhdl = "vhdl",
	wiki = "mediawiki",
	wsf = "wsf",
	xml = "xml",
	xs = "xs",
	xsd = "xml",
	xsl = "xml",
	xslt = "xml",
	xtend = "xtend",
	xul = "xml",
	yaml = "yaml",
	yml = "yaml",
	zig = "zig",
	zsh = "bash"
}
M.extensions = extensions

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
		utility = string.find(field[1] or "", "[^/]+$") -- remove filepath
	end
	return fullhb, utility
end


vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	local path = win.file.name -- filepath
	local mime

	local set_filetype = function(syntax)
		-- Cannot move because of win
		local filetype = M.filetypes[syntax]
		for _, cmd in pairs(filetype.cmd or {}) do
			vis:command(cmd)
		end
		win:set_syntax(filetype.alt_name or syntax)
		return nil
	end

	if path and #path > 0 then
		local name = path:match("[^/]+$") -- filename
		if name then
			local unchanged
			while #name > 0 and name ~= unchanged do
				unchanged = name
				for _, pattern in ipairs(vis.ftdetect.ignoresuffixes) do
					name = name:gsub(pattern, "")
				end
			end
		end

		if name and #name > 0 then
			-- detect filetype by filename ending with a configured extension
			local ext = name:match"%.([^%.]+)$"
			if ext then
				local lexer = extensions[ext] or M.extensions[ext:lower()]
				if lexer then
					return set_filetype(lexer)
				end
			end
			-- detect filetype by filename pattern
			for lang, ft in pairs(vis.ftdetect.filetypes) do
				for _, pattern in ipairs(ft.name or {}) do
					if name:match(pattern) then
						return set_filetype(lang)
					end
				end
			end
		end

		-- run file(1) to determine mime type
		local file = io.popen(
			string.format(
				"file -bL --mime-type -- '%s'", path:gsub("'", "'\\''")
			)
		)
		mime = file:read('*l')
		file:close()
		if mime then
			local lexer = mimes[mime] or mimes["text/" .. mime]
			if lexer then
				return set_filetype(lexer)
			end
		end
	end

	-- pass first few bytes of file to custom file type detector functions
	local file = win.file
	local data = file:content(0, 256)
	if data and #data > 0 then
		for lang, ft in pairs(vis.ftdetect.filetypes) do
			if type(ft.detect) == 'function' and ft.detect(file, data) then
				return set_filetype(lang)
			end
		end

		local fullhb, utility = GetHashBang(data)

		if utility or fullhb then
			for lang, ft in pairs(vis.ftdetect.filetypes) do
				if
					utility and TStringFind(ft.utility, utility)
					or
					fullhb and TStringFind(ft.hashbang, fullhb)
				then
					return set_filetype(lang)
				end
			end
		end
	end

	-- try text lexer as a last resort
	if (mime or 'text/plain'):match('^text/.+$') then
		return set_filetype('text')
	end

	win:set_syntax(nil)
end)

