{ ... }: {

  imports = [ ./plugins/extraPlugins ];

  config = {
    colorschemes = import ./core/colorscheme.nix { };
    options = import ./core/options.nix { };
    clipboard = import ./core/clipboard.nix { };
    globals = import ./core/globals.nix { };
    plugins = import ./plugins { };
    keymaps = import ./keymaps { };
  };

}
