{ pkgs, cmd, ... }:

{
  plugins.dap = {
    enable = true;
    extensions = {
      dap-python.enable = true;
      dap-ui.enable = true;
      dap-go.enable = true; # hmm
      dap-virtual-text.enable = true;
    };
  };

  # keymaps = [
  #   {
  #     key = "<leader>db";
  #     action = cmd "DapToggleBreakpoint";
  #     options.desc = "Toggle Breakpoint";
  #   }
  #   {
  #     key = "<leader>dc";
  #     action = cmd "DapContinue";
  #     options.desc = "Continue Debugging";
  #   }
  #   {
  #     key = "<leader>dL";
  #     action = cmd "DapStepInto";
  #     options.desc = "Step Into Function";
  #   }
  #   {
  #     key = "<leader>dL";
  #     action = cmd "DapStepInto";
  #     options.desc = "Step Into Function";
  #   }
  #   {
  #     key = "<leader>dH";
  #     action = cmd "DapStepOut";
  #     options.desc = "Step Out Of Function";
  #   }
  #   {
  #     key = "<leader>dt";
  #     action = cmd "DapTerminate";
  #     options.desc = "Terminate Session";
  #   }
  # ];

  # Mostly from https://github.com/pete3n/nixvim-flake/blob/main/config/debug.nix
  extraPlugins = with pkgs.vimPlugins; [ nvim-gdb ];

  # Added stepOnEntry, might be needed elsewhere
  extraConfigLua = ''
       local dap, dapui = require("dap"), require("dapui")
       dap.listeners.before.attach.dapui_config = function()
       	dapui.open()
       end
       dap.listeners.before.launch.dapui_config = function()
       	dapui.open()
       end
       dap.listeners.before.event_terminated.dapui_config = function()
       	dapui.close()
       end
       dap.listeners.before.event_exited.dapui_config = function()
       	dapui.close()
       end

      local dap = require('dap')
      dap.set_log_level('DEBUG')

      dap.adapters.lldb = {
          type = 'executable',
          command = '${pkgs.lldb_17}/bin/lldb-vscode', -- adjust as needed, must be absolute path
          name = 'lldb'
      }

      local dap = require("dap")
      dap.adapters.gdb = {
          type = "executable",
          command = "gdb",
          args = { "-i", "dap" }
      }

      local dap = require("dap")
      dap.configurations.c = {
    	{
    		name = "Launch",
    		type = "gdb",
    		request = "launch",
    		program = function()
    			return vim.fn.input('Path of the executable: ', vim.fn.getcwd() .. '/', 'file')
    		end,
    		cwd = "''${workspaceFolder}",
                stopOnEntry = false,
    	},
      }

      local dap = require('dap')
      dap.configurations.rust = {
    	{
    		name = 'Launch',
    		type = 'lldb',
    		request = 'launch',
    		program = function()
    			return vim.fn.input('Path of the executable: ', vim.fn.getcwd() .. '/', 'file')
    		end,
    		cwd = "''${workspaceFolder}",
    		stopOnEntry = false,
    		args = {},
    	},
    }

    dap.configurations.zig = {
    	{
    		name = 'Launch',
    		type = 'lldb',
    		request = 'launch',
    		program = function()
    			return vim.fn.input('Root path of executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
    		cwd = "''${workspaceFolder}",
    		stopOnEntry = false,
    		args = {},
    	},
    }
  '';
}
