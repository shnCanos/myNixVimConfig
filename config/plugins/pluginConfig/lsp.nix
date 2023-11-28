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
      filetypes = [ "vimwiki" "org" "markdown" "text" ];
      extraOptions.settings = {
        language = [ "pt_PT" "en_GB" ];
        dictionary = { "en_GB" = [ "soupa" "haruka" "kana" ]; };
        completionEnabled = true;
      };
    };
    rust-analyzer = {
      enable = true;
      installCargo = true;
      installRustc = true;
    };
  };
}
