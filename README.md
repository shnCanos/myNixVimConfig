# My NixVim config

To try it out, run

```sh
nix run "github:shnCanos/myNixVimConfig"
```

# File Structure

## config/default.nix

An overview to the whole configuration. In order to navigate to any of the paths, you can use `gf`.

## Core

This directory stores the options, globals, colorscheme and clipboard configuration.

## Plugins

Where the information related to plugins is stored.

### config/plugins/default.nix

An overview to all supported plugins.

### config/plugins/extraPlugins

The unsupported ones are not imported in `config/plugins/default.nix`. Instead, they can be found here.

This directory is imported in `config/default.nix`

### config/plugins/pluginConfig

This is where the plugins' configuration (if it exists) is stored.

## Keymaps

Where the information related to keymaps is stored.
