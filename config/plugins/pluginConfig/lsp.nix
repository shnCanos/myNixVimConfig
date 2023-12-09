{ ... }:

{
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
      extraOptions.settings = {
        language = [ "pt_PT" "en_GB" ];
        checkFrequency = "save";
        dictionary = { "en_GB" = [ "Soupa" "Haruka" "Kana" "NixVim" ]; };
        completionEnabled = false;
      };
      settings.additionalRules.enablePickyRules = true;
    };
    rust-analyzer = { # Rust
      enable = true;
      installCargo = true;
      installRustc = true;
    };
  };
}
