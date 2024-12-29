local formats = {
	cs = "csharpier",
	typescript = "prettier",
	html = "prettier",
	css = "prettier",
	scss = "prettier",
	json = "prettier",
	javascript = "prettier",
	lua = "stylua",
	python = "yapf",
	java = "ast-grep",
	rust = "ast-grep",
}

--Function that runs the formatter
function format()
	--Checks filetype
	local filetype = vim.bo.filetype
	if formats[filetype] then
		vim.cmd("Neoformat " .. formats[filetype])
	end
end

return {
	"sbdchd/neoformat",
}
