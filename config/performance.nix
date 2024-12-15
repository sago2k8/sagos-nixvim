{
  performance = {
    byteCompileLua.plugins = true;
    combinePlugins.enable = true;
    combinePlugins.standalonePlugins = [
      "conform.nvim"
      "oil.nvim"
      "mini.nvim"
      "copilot.lua"
      "nvim-treesitter"
      "treesitter"
    ];
  };
}
