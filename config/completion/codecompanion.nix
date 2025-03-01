{
  plugins.codecompanion = {
    enable = true;
    settings = {
      display = {
        action_palette = {
          provider = "telescope";
          opts = {
            show_default_actions = true;
            show_default_prompt_library = true;
          };
        };
      };
      strategies = {
        chat = {
          adapter = "anthropic";
        };
        inline = {
          adapter = "copilot";
        };
      };
      adapters = {
        openai = {
          __raw = ''
            function()
              return require("codecompanion.adapters").extend("openai", {
                env = {
                  api_key = "cmd:pass local/chatGPT",
                },
              })
            end
          '';
        };
        anthropic = {
          __raw = ''
            function()
              return require("codecompanion.adapters").extend("anthropic", {
                env = {
                  api_key = "cmd:pass local/claude",
                },
              })
            end
          '';
        };
      };
    };
  };
}
