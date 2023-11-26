{ self, ... }: {
  keymaps = import ./window.nix { } ++ import ./buffer.nix { }
    ++ import ./other.nix { } ++ import ./pluginsRelated.nix { }
    ++ import ./code.nix;
}
