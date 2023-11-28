{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ lazygit-nvim telescope-symbols-nvim ];
}

