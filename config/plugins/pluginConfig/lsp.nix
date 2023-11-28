{ ... }:

{
  enable = true;
  servers = {
    gdscript.enable = true;
    pyright.enable = true;
    nil_ls.enable = true; # Nix
    jsonls.enable = true;
    ltex = {
      enable = true;
      installLanguageServer = true;
      extraOptions.settings = {
        language = [ "pt_PT" "en_GB" ];
        dictionary = { "en_GB" = [ "Soupa" "Haruka" "Kana" "NixVim" ]; };
        completionEnabled = true;
      };
      settings.additionalRules.enablePickyRules = true;
    };
    rust-analyzer = {
      enable = true;
      installCargo = true;
      installRustc = true;
    };
  };
}
