{ ... }:
# let
#   importKeymapsFile = name: import (builtins.toPath (name + ".nix")) { };
#   joinKeymaps = list:
#     builtins.foldl' (keys1: keys2: keys1 ++ keys2) (map importKeymapsFile list);
# in joinKeymaps [
#   "buffer"
#   "fileManagers"
#   "git"
#   "lsp"
#   "movement"
#   "other"
#   "project"
#   "terminal"
#   "window"
# ]

# let
#   importKeymapsFile = name: import (./. + name + ".nix") { };
#   joinKeymaps = list:
#     builtins.foldl' (keys1: keys2: keys1 ++ keys2) [ ]
#     (map importKeymapsFile list);
#
# in joinKeymaps [
#   "buffer"
#   "fileManagers"
#   "git"
#   "lsp"
#   "movement"
#   "other"
#   "project"
#   "terminal"
#   "window"
# ]

import ./buffer.nix { } ++ import ./fileManagers.nix { } ++ import ./git.nix { }
++ import ./lsp.nix { } ++ import ./movement.nix { } ++ import ./other.nix { }
++ import ./project.nix { } ++ import ./terminal.nix { }
++ import ./window.nix { }
