{ ... }: {
  plugins.notify = {
    enable = true;
    # backgroundColour = "#000000";
    timeout = 5000; # I don't know why
    topDown = true; # It looks terrible with false
    stages = "slide";
  };
}
