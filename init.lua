-- 安裝外掛
require("plugins")
-- 快捷鍵
require("keymap")
-- LSP
require('lsp')

vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("set noshowmode")

-- 編輯行亮色
vim.o.cursorline= true
-- 檔案編碼
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.ff = "unix"
-- 自動開啟縮排顏色
vim.g.indent_guides_enable_on_vim_startup = 1
-- 檔案參照功能
vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")
vim.cmd("syntax on")
-- 設定tab鍵寬度
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.g.context_nvim_no_redraw = 1
-- 可以用滑鼠
vim.o.mouse = "a"
-- 顯示行號
vim.wo.number = true
vim.wo.relativenumber = true
-- 當檔案被外部程式修改時，自動載入
vim.o.autoread = true
vim.bo.autoread = true
-- jk移動時游標下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 顯示左側圖示指示列
vim.wo.signcolumn = "yes"
-- 右側參考線，超過表示程式碼太長了，考慮換行
vim.wo.colorcolumn = "80"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

