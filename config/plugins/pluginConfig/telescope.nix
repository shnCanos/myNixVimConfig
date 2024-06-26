{ pkgs, cmd, ... }:

{
  plugins.telescope = {
    enable = true;
    defaults.theme = "dropdown";
    defaults = { set_env.__raw = ''{ [" COLORTERM "] = " truecolor " }''; };
    extensions = {
      file_browser = { # FAILED
        enable = true;
        grouped = true;
        hideParentDir = true;
      };
      # fzf-native.enable = true; # For some reason this one does not work
      media_files.enable = true;
      # frecency.enable = true;
      ui-select.enable = true;
      undo.enable = true;
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
        desc = "Search Buffer";
      };
      "<leader>/" = {
        action = "current_buffer_fuzzy_find";
        desc = "Search Buffer";
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
      "<leader>cX" = {
        action = "diagnostics";
        desc = "Find diagnostics (telescope)";
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
      # Movement with control key + j/k
      "<c-j>".__raw = ''require("telescope.actions").move_selection_next'';
      "<c-k>".__raw = ''require("telescope.actions").move_selection_previous'';
      # Scroll preview
      "<c-s-k>".__raw = ''require("telescope.actions").preview_scrolling_up'';
      "<c-s-j>".__raw = ''require("telescope.actions").preview_scrolling_down'';
      # Close with a single esc
      "<esc>".__raw = ''require("telescope.actions").close'';
      # Delete previous word
      "<c-BS>".__raw = ''
        function()
          vim.cmd [[normal! bcw]]
        end'';
      "<c-h>".__raw = ''
        function()
          vim.cmd [[normal! bcw]]
        end'';
      "<c-w>".__raw = ''
        function()
          vim.cmd [[normal! bcw]]
        end'';
    };
  };

  keymaps = [
    {
      # (For some reason this gives me an error if I put it in telescope itself)
      key = "<leader>fp";
      action = cmd "Telescope projects";
      options.desc = "Find Projects";
    }
    # todo.nvim
    {
      key = "<leader>st";
      action = cmd "TodoTelescope";
      options.desc = "Search Todos";
    }
  ];
}
