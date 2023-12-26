{ ... }: {
  plugins.neorg = {
    enable = true;

    modules = {
      "core.defaults" = { __empty = null; };
      "core.concealer" = { __empty = null; };
      "core.dirman" = {
        config = {
          workspaces = {
            notes = "~/Notes/neorg";
            default_workspace = "notes";
          };
        };
      };
      # Seems to need Neovim 0.10?
      # "core.ui.calendar" = { __empty = null; };

      # Not using this currently
      "core.integrations.telescope" = { __empty = null; };
    };
  };
}
