{ ... }: {
  plugins.neorg = {
    enable = true;

    modules = {
      "core.defaults" = { __empty = null; };
      "core.concealer" = { __empty = null; };
      "core.integrations.telescope" = { __empty = null; };
      "core.dirman" = {
        config = {
          workspaces = {
            notes = "~/Notes/neorg";
            default_workspace = "notes";
          };
        };
      };
    };
  };
}
