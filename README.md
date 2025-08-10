# nvim

## Introduction

Personal, minimal Neovim setup:

|   |   |
|---|---|
| UI | [Tokyonight](https://github.com/folke/tokyonight.nvim) <br> [Barbar](https://github.com/romgrk/barbar.nvim) <br> [Lualine](https://github.com/nvim-lualine/lualine.nvim)
Finder | [Snacks](https://github.com/folke/snacks.nvim)
Hints | [Which-key](https://github.com/folke/which-key.nvim)
Rendering | [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) <br> [Markview](https://github.com/OXY2DEV/markview.nvim)<br> [TODO-comments](https://github.com/folke/todo-comments.nvim)
Linting etc | [Conform](https://github.com/stevearc/conform.nvim) <br>[Nvim-lint](https://github.com/mfussenegger/nvim-lint)
Tool installers | [Mason](https://github.com/mason-org/mason.nvim) <br>[Mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer) <br>[Mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim)
Typing aids | [Blink](https://github.com/saghen/blink.cmp) <br>[Nvim-autopairs](https://github.com/windwp/nvim-autopairs) <br>[Nvim-puppeteer](https://github.com/chrisgrieser/nvim-puppeteer) <br>[Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) <br>[Guess-indent](https://github.com/NMAC427/guess-indent.nvim)
Fun | [Typr](https://github.com/nvzone/typr)

## Overview

- `init.lua` 
  - sets leader key and nerdfont availability
  - calls `lua/options.lua` (sets other options)
  - calls `lua/plugins.lua`
    - installs plugins 
    - calls `lua/plugins/setup.lua` (plugins w/ custom configs)
    - calls `lua/plugins/lsp.lua` (LSP, lint, debug for `.py`, `.lua`)
  - calls `lua/keymaps.lua`


## Installation

### Install Neovim

Requires Neovim v0.12+ (i.e. most recent [nightly build](
https://github.com/neovim/neovim/blob/master/INSTALL.md)) for native `vim.pack` package manager.

### Install External Dependencies

External Requirements:
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
- A Terminal with the [Kitty](https://sw.kovidgoyal.net/kitty/) protocol (recommended for viewing image, pdf previews)

### Install config

> [!NOTE]
> [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

#### Clone nvim config

<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/iacobo/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/dam9000/kickstart-modular.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/dam9000/kickstart-modular.nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

#### Read The Friendly Documentation


### Getting Started

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

### FAQ

* How do I uninstall this/my current configuration?
  * You should back it up and then delete all associated files:
    * your existing `init.lua` etc
    * `rm -rf ~/.local/share/nvim/ ~/.local/state/nvim/`
