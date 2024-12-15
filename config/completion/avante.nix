{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "openai";
      hints = {
        enabled = true;
      };
      auto_suggestions_frecuency = "copilot";
      behaviour = {
        auto_suggestions = true;
      };

      openai = {
        api_key_name = "cmd:pass local/chatGPT";
      };
    };
  };
}
