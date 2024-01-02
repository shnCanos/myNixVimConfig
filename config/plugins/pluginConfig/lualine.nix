{ ... }: {
  plugins.lualine = {
    enable = true;
    sections = {
      lualine_x = [
        # {
        #   name = ''
        #     require("noice").api.statusline.mode.get,
        #     cond = require("noice").api.statusline.mode.has,
        #     color = { fg = "#ff9e64" },
        #   '';
        # }
        "encoding"
        "fileformat"
        "filetype"
      ];
      lualine_z = [ ''" " .. os.date("%R")'' ];
      lualine_c = [ "filename" ];
    };
  };
}
