# config/completion/codecompletion.nix
{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    # Add codecompletion.nvim as a plugin
    (pkgs.vimUtils.buildVimPlugin {
      pname = "codecompletion.nvim";
      version = "v1.2.3"; # Replace with the version you want to use
      src = pkgs.fetchFromGitHub {
        owner = "olimorris";
        repo = "codecompanion.nvim";
        rev = "v10.3.1"; # Replace with the version you want to use
        sha256 = "sha256-6JsyxrOBinqNsUirPTSOz/MEfO5RKM9VrapN2v1snvE="; # Replace with the actual SHA256 hash
      };
    })
  ];

  extraConfigLua = ''
    require("codecompanion").setup({
    adapters = {
      openai = function()
        return require("codecompanion.adapters").extend("openai", {
          env = {
            api_key = "cmd:pass local/chatGPT",
          },
        })
      end,
    },
    })
  '';
}
