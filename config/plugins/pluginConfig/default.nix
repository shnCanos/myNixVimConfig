{ ... }:

{
  plugins = {
    treesitter = import ./treesitter.nix { };
    toggleterm = import ./toggleterm.nix { };
    barbar = import ./barbar.nix { }; # Tabs
    neo-tree = import ./neotree.nix { };
    conform-nvim = import ./conform.nix { }; # Formatter
    none-ls = import ./none-ls.nix { }; # Also formatter or something? hmm
    presence-nvim = import ./presence.nix { };
    telescope = import ./telescope.nix { };
    lsp = import ./lsp.nix { };
    nvim-cmp = import ./nvim-cmp.nix { };
    notify = import ./notify.nix { };
    oil = import ./oil.nix { };
  };
}
