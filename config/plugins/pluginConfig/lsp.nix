{ ... }:

{
  plugins.clangd-extensions = {
    enable = true;
    enableOffsetEncodingWorkaround = true;
    inlayHints = {
      inline = "true";
      showParameterHints = true;
    };
  };

  plugins.lsp = {
    enable = true;
    servers = {
      # C
      clangd.enable = true;
      cmake.enable = true;

      # Haskell
      # hls.enable = true; 

      # Godot
      gdscript.enable = true;

      # Python
      pyright.enable = true;

      # Nix
      nil_ls.enable = true;

      # Rust
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };

      # --- OTHER ---
      # Json
      jsonls.enable = true;

      # Yaml
      yamlls.enable = true;

      # XML
      lemminx.enable = true;

      # Language tool 
      ltex = {
        enable = true;
        # installLanguageServer = true; # Deprecated
        settings = {
          language = "en-GB";
          checkFrequency = "save";
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
              "yoink"
            ];
          };
          completionEnabled = true;
          additionalRules.enablePickyRules = true;
          # statusBarItem = true; # I don't really understand what this does
        };
      };
    };
  };
}
