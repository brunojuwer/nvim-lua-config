vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
--vim.opt.relativenumber = true

require("config.lazy")

vim.cmd.colorscheme("catppuccin-mocha")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "php", "javascript", "typescript", "java" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})

require("lualine").setup({
  options = {
    theme = "dracula",
  },
})

vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle<CR>", {})
