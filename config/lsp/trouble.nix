{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
    };
  };
  # TODO: Add keybinds to close trouble (q would be nice), rn I need to use :x to close it...
  keymaps = [
    {
      mode = "n";
      key = "<leader>x";
      action = "+diagnostics/quickfix";
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        silent = true;
        desc = "Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options = {
        silent = true;
        desc = "Buffer Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xt";
      action = "<cmd>Trouble todo toggle<cr>";
      options = {
        silent = true;
        desc = "Todo (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xT";
      action = "<cmd>Trouble todo toggle filter.buf=0<cr>";
      options = {
        silent = true;
        desc = "Buffer Todo (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      options = {
        silent = true;
        desc = "Quickfix List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options = {
        silent = true;
        desc = "Location List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options = {
        silent = true;
        desc = "LSP Definitions / references / ... (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      options = {
        silent = true;
        desc = "Symbols (Trouble)";
      };
    }
  ];
}
