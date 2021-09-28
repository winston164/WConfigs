lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- Modules and its options go here
  highlight = { 
    enable = true,
    additional_vim_regex_highlighting = false
    },
  textobjects = { enable = true },
  ensure_installed = {
    "tsx",
    "typescript",
    "python",
    "lua",
    "css"
  }
}
EOF

