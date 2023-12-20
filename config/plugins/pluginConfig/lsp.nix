{ ... }:

{
  plugins.lsp = {
    enable = true;
    servers = {
      # hls.enable = true; # Haskell
      gdscript.enable = true;
      pyright.enable = true; # Python
      nil_ls.enable = true; # Nix
      jsonls.enable = true; # Json
      ltex = { # Language tool
        enable = true;
        installLanguageServer = true;
        settings = {
          language = "en-GB";
          # checkFrequency = "save";
          dictionary = {
            "en-GB" = [
              "NixVim"

              "Soupa"
              "Kana"
              "Haruka"

              # Yep
              "sus"
              "nsfw"
              "fr"
              "rn"
              "welp"
            ];
          };
          completionEnabled = true;
          additionalRules.enablePickyRules = true;
          # statusBarItem = true; # I don't really understand what this does
        };
      };
      rust-analyzer = { # Rust
        enable = true;
        installCargo = true;
        installRustc = true;
      };
    };
  };
}
