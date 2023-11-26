{ ... }:

[
  # DELETE WORD
  {
    mode = [ "i" "t" "n" ];
    key = "<c-BS>";
    action = "<c-w>";
  }
  # Better movement
  {
    key = "j";
    action = "gj";
  }
  {
    key = "k";
    action = "gk";
  }
]
