{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "openai";
      auto_suggestions_frecuency = "copilot";

      openai = {
        api_key_name = "cmd:pass local/chatGPT";
      };
    };
  };
}
