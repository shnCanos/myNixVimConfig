{ ... }: {
  plugins.auto-session = {
    enable = true;
    autoRestore.enabled = false;
    autoSave.enabled = true;
    bypassSessionSaveFileTypes = [ "alpha" ];
  };
}
