{ ... }: {
  plugins.lualine = {
    enable = true;
    sections = {
      lualine_z = [ ''" " .. os.date("%R")'' ];
      lualine_c = [ "filename" ];
    };
  };
}
