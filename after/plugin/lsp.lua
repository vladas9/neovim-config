require("nvim-lsp-installer").setup {}
local lspconfig = require'lspconfig'

-- Python
lspconfig.pyright.setup{}

-- C/C++
lspconfig.clangd.setup{}
