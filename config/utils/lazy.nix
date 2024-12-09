{
  plugins.lazy = {
    enable = true;
    plugins = [
      {
        name = "yetone/avante.nvim";
        event = "VeryLazy";
        lazy = false;
        version = false;
        opts = {
        };
        dependencies = [
          "stevearc/dressing.nvim"
          "nvim-lua/plenary.nvim"
          "MunifTanjim/nui.nvim"
          "hrsh7th/nvim-cmp"
          "nvim-tree/nvim-web-devicons"
          "zbirenbaum/copilot.lua"
          {
            name = "HakonHarnes/img-clip.nvim";
            event = "VeryLazy";
            opts = {
              default = {
                embed_image_as_base64 = false;
                prompt_for_file_name = false;
                drag_and_drop = {
                  insert_mode = true;
                };
                use_absolute_path = true;
              };
            };
          }
          {
            name = "MeanderingProgrammer/render-markdown.nvim";
            opts = {
              file_types = ["markdown" "Avante"];
            };
            ft = ["markdown" "Avante"];
          }
        ];
      }
    ];
  };
}
