{ ... }: {
  plugins.neorg = {
    enable = builtins.trace
      "Hello. You are rebuilding the config. This line is in the neorg file!"
      true;

    modules = {
      "core.defaults" = { };
      "core.concealer" = { };
      # "core.integrations.telescope" = { };
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
