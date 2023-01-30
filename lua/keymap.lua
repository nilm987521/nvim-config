local wk = require("which-key")

-- 換頁
wk.register({
  ["<PageUp>"] = { "<C-u>", "上一頁" },
  ["<PageDown"] = { "<C-d>", "下一頁" },
})

-- ctrl + s 儲存
wk.register({ ["<C-s>"] = { "<ESC><cmd>w<CR>", "存檔" }, })
wk.register({ ["<C-s>"] = { "<ESC><cmd>w<CR>", "存檔" }, { mode = 'i' } })

-- 資料夾顯示
wk.register({ ["<F5>"] = { "<cmd>NvimTreeToggle<CR>", "資料夾顯示" } })

-- ctrl + / 註解
wk.register({ ["<C-_>"] = { "<Plug>NERDCommenterToggle", "註解" }, { noremap = false } })
wk.register({ ["<C-_>"] = { "<Plug>NERDCommenterToggle<CR>gv", "註解" }, { mode = 'i', noremap = false } })

-- 文件格式化
wk.register({ ["<C-f>"] = { "<cmd>lua vim.lsp.buf.format{ async = true }<CR>", "文件格式化" } })

-- Alt + m => which key清單
wk.register({ ["<M-m>"] = { "<cmd>WhichKey<CR>", "顯示快捷鍵清單" } })
