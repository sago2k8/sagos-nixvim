{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent = {enable = true;};
      ensure_installed = ["go" "terraform" "protobuf" "typescript" "yaml"];
      highlight = {enable = true;};
    };
    folding = true;
    nixvimInjections = true;
  };
}
