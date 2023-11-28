{ ... }:

import ./buffer.nix { } ++ import ./fileManagers.nix { } ++ import ./git.nix { }
++ import ./lsp.nix { } ++ import ./movement.nix { } ++ import ./other.nix { }
++ import ./project.nix { } ++ import ./terminal.nix { }
++ import ./window.nix { }
