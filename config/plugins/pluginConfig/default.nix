{ ... }:

{
  plugins = {
    treesitter = import ./treesitter.nix { };
    toggleterm = import ./toggleterm.nix { };
    barbar = import ./barbar.nix { }; # Tabs
    neo-tree = import ./neotree.nix { };
    conform-nvim = import ./conform.nix { }; # Formatter
    presence-nvim = import ./presence.nix { };
    telescope = import ./telescope.nix { };
    lsp = import ./lsp.nix { };
    nvim-cmp = import ./nvim-cmp.nix { };
    notify = import ./notify.nix;
  };
}
