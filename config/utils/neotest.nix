{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "neotest-vim-test";
      version = "2023-04-17";
      src = pkgs.fetchFromGitHub {
        owner = "nvim-neotest";
        repo = "neotest-vim-test";
        rev = "75c4228882ae4883b11bfce9b8383e637eb44192";
        sha256 = "12ix1lzmqlk3iyngaafby9c02fcl9d5iva965miwxfljvmibjnbw";
      };
    })
    neotest
    FixCursorHold-nvim
    neotest-plenary
    vim-test
    neotest-python
    neotest-vitest
    neotest-go
  ];
  extraConfigLua = ''
    require("neotest").setup({
      adapters = {
        require("neotest-go"),
        require("neotest-python")({
          dap = { justMyCode = false },
        }),
        require "neotest-vim-test" {
          ignore_file_types = { "python", "java", "vim", "lua", "javascript", "typescript" },
        },
      },
      output = { enabled = true, open_on_run = true },
      summary = { enabled = true, },
    })
  '';
  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>lua require('neotest').run.run(vim.fn.expand '%')<CR>";
      options = {
        desc = "Run File";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tT";
      action = "<cmd>lua require('neotest').run.run(vim.loop.cwd())<CR>";
      options = {
        desc = "Run All Test Files";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tr";
      action = "<cmd>lua require('neotest').run.run()<CR>";
      options = {
        desc = "Run Nearest";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>";
      options = {
        desc = "Run Nearest with debugger";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>lua require('neotest').summary.toggle()<CR>";
      options = {
        desc = "Toggle Summary";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>lua require('neotest').output.open{ enter = true, auto_close = true }<CR>";
      options = {
        desc = "Show Output";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tO";
      action = "<cmd>lua require('neotest').output_panel.toggle()<CR>";
      options = {
        desc = "Toggle Output Panel";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tS";
      action = "<cmd>lua require('neotest').run.stop()<CR>";
      options = {
        desc = "Stop";
        silent = true;
      };
    }
  ];
}
