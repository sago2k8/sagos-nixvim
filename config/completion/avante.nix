{ pkgs, ... }: {
  plugins.avante = {
    enable = true;

    settings = {
      provider = "openai";
      hints = {
        enabled = true;
      };
      auto_suggestions_frecuency = "copilot";
      behaviour = {
        auto_suggestions = false;
      };
      openai = {
        api_key_name = "cmd:pass local/chatGPT";
      };
    };
  };

  extraPlugins = with pkgs.vimPlugins; [
    img-clip-nvim
    plenary-nvim
  ];

  extraConfigLua = ''
    require("img-clip").setup();
  '';
}
