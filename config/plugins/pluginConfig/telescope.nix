{ ... }:

{
  enable = true;
  extensions = {
    file_browser.enable = true;
    fzf-native.enable = true;
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
    "<leader>ff" = {
      action = "find_files";
      desc = "Find buffers";
    };
    "<leader> " = {
      action = "buffers";
      desc = "Find buffers";
    };
    "<leader>," = {
      action = "buffers";
      desc = "Find buffers";
    };
    "<leader>ft" = {
      action = "colorscheme";
      desc = "Find Theme";
    };
    "<leader>fw" = {
      action = "grep_string";
      desc = "Find Word";
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
    # << SEARCH
    # OTHER
    "<M-x>" = {
      action = "commands";
      desc = "Commands";
    };
    # << OTHER
  };
}
