vim.cmd(
  "let g:lightline = {"..
    "'colorscheme': 'wombat',"..
    "'active': {'left': [ [ 'mode', 'paste' ],[ 'readonly', 'modified', 'location', 'charcode'] ]},"..
    "'component': {"..
      "'charcode': '[code=%b, \\u%04B]',"..
      "'location': '%{getcwd()}',"..
    "},"..
  "}"
)
