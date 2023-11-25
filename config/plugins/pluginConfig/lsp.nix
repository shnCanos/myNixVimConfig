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
    };
    rust-analyzer = {
      enable = true;
      installCargo = true;
      installRustc = true;
    };
  };
}
