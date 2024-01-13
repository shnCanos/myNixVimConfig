{ cmd, ... }: {
  plugins.obsidian = {
    enable = true;
    dir = "~/BandanaNotes";
    ui.enable = true;
    completion.minChars = 1;
  };
}
