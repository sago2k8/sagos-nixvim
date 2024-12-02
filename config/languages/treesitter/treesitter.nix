{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent = {enable = true;};
      ensure_installed = ["go" "terraform" "proto" "typescript" "yaml" "rust" "nix" "html" "css" "bash" "lua" "python" "javascript"];
      highlight = {enable = true;};
    };
    folding = true;
    nixvimInjections = true;
  };
}
