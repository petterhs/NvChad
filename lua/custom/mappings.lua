local M = {}

M.disabled = {
  n = {
    ["<C-c>"] = "",
  },
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up"},
  },
  i = {
    ["jj"] = {"<ESC>", "escape insert mode", opts = { nowait = true}},
    ["<C-s>"] = {"<ESC>:w<CR>", "save file"},
  },
  v = {
    ["<C-s>"] = {"<ESC>:w<CR>", "save file"},
  }
}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint"
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require ('crates').update_all_crates()
      end,
      "update crates"
    }
  }
}

return M
