{ ... }:

{
  plugins.telescope = {
    enable = true;
    extensions = {
      file_browser = { # FAILED
        enable = true;
        grouped = true;
        hideParentDir = true;
      };
      # fzf-native.enable = true; # For some reason this one does not work
      media_files.enable = true;
      project-nvim.enable = true;
      frecency.enable = true;
    };

    keymaps = {
      # FIND
      "<leader>fh" = {
        action = "command_history";
        desc = "Find command history";
      };
      "<leader> " = {
        action = "find_files";
        desc = "Find File";
      };
      "<leader>," = {
        action = "buffers";
        desc = "Find buffers";
      };
      "<leader>ft" = {
        action = "colorscheme";
        desc = "Find Theme";
      };
      "<leader>fb" = {
        action = "buffers";
        desc = "Find buffers";
      };
      "<leader>fr" = {
        action = "oldfiles";
        desc = "Recent";
      };
      # << FIND
      # GIT
      "<leader>gc" = {
        action = "git_commits";
        desc = "Find git commit";
      };
      "<leader>gs" = {
        action = "git_status";
        desc = "Git status";
      };
      # << GIT
      # SEARCH
      "<leader>sr" = {
        action = "registers";
        desc = "Registers";
      };
      "<leader>sa" = {
        action = "autocommands";
        desc = "Auto Commands";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        desc = "Buffer";
      };
      "<leader>sc" = {
        action = "command_history";
        desc = "Command History";
      };
      "<leader>sC" = {
        action = "commands";
        desc = "Commands";
      };
      "<leader>sd" = {
        action = "diagnostics";
        desc = "Document diagnostics";
      };
      "<leader>sD" = {
        action = "diagnostics";
        desc = "Workspace diagnostics";
      };
      "<leader>sh" = {
        action = "help_tags";
        desc = "Help Pages";
      };
      "<leader>sH" = {
        action = "highlights";
        desc = "Search Highlight Groups";
      };
      "<leader>sk" = {
        action = "keymaps";
        desc = "Keymaps";
      };
      "<leader>sM" = {
        action = "man_pages";
        desc = "Man Pages";
      };
      "<leader>sm" = {
        action = "marks";
        desc = "Jump to Mark";
      };
      "<leader>so" = {
        action = "vim_options";
        desc = "Options";
      };
      "<leader>sR" = {
        action = "resume";
        desc = "Resume";
      };
      "<leader>sW" = {
        action = "grep_string";
        desc = "Find Word";
      };
      "<leader>sw" = {
        action = "live_grep";
        desc = "Live Grep";
      };
      # << SEARCH
      # CODE
      "<leader>cx" = {
        action = "diagnostics";
        desc = "Find diagnostics";
      };
      "<leader>ca" = {
        action = "quickfix";
        desc = "Code actions";
      };
      "<leader>cz" = {
        action = "lsp_references";
        desc = "Find references";
      };
      "<leader>ci" = {
        action = "lsp_implementations";
        desc = "Find implementations";
      };
      # << CODE
      # OTHER
      "<M-x>" = {
        action = "commands";
        desc = "Commands";
      };
      "<leader>iu" = {
        action = "symbols";
        desc = "Insert Symbols";
      };
      # << OTHER
    };

    # Workaround for working keymaps
    defaults.mappings.i = {
      "<c-j>".__raw = ''require("telescope.actions").move_selection_next'';
      "<c-k>".__raw = ''require("telescope.actions").move_selection_previous'';
      "<c-s-k>".__raw = ''require("telescope.actions").preview_scrolling_up'';
      "<c-s-j>".__raw = ''require("telescope.actions").preview_scrolling_down'';
    };
  };

  keymaps = let cmd = command: "<cmd>${command}<cr>";
  in [
    {
      # ADD PROJECT
      key = "<leader>pa";
      action = cmd "AddProject";
      options.desc = "Add Project";
    }
    {
      # (For some reason this gives me an error if I put it in telescope itself)
      key = "<leader>pf";
      action = cmd "Telescope projects";
      options.desc = "Find Projects";
    }
  ];
}
