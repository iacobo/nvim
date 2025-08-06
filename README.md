# nvim

## Introduction

Personal, minimal Neovim setup:

|   |   |
|---|---|
| UI | [Tokyonight](https://github.com/folke/tokyonight.nvim) <br> [Barbar](https://github.com/romgrk/barbar.nvim) <br> [Lualine](https://github.com/nvim-lualine/lualine.nvim)
Finder | [Snacks](https://github.com/folke/snacks.nvim)
Hints | [Which-key](https://github.com/folke/which-key.nvim)
Rendering | [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) <br> [TODO-comments](https://github.com/folke/todo-comments.nvim)
Linting etc | [Conform](https://github.com/stevearc/conform.nvim) <br>[Nvim-lint](https://github.com/mfussenegger/nvim-lint)
Tool installers | [Mason](https://github.com/mason-org/mason.nvim) <br>[Mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer) <br>[Mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim)
Typing aids | [Blink](https://github.com/saghen/blink.cmp) <br>[Nvim-autopairs](https://github.com/windwp/nvim-autopairs) <br>[Nvim-puppeteer](https://github.com/chrisgrieser/nvim-puppeteer) <br>[Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) <br>[Guess-indent](https://github.com/NMAC427/guess-indent.nvim)
Fun | [Typr](https://github.com/nvzone/typr)


## Installation

### Install Neovim

Requires v12 ([Neovim nightly](https://github.com/neovim/neovim/releases/tag/nightly) ) currently) for `vim.pack.add` package management.

### Install External Dependencies

External Requirements:
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons <br>if you have it set `vim.g.have_nerd_font` in `init.lua` to true

### Install config

> [!NOTE]
> [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

#### Clone kickstart.nvim

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
    * `rm -rf ~/.local/share/nvim/` 
    * `rm -rf ~/.local/state/nvim/` 

### Install Recipes

Below you can find OS specific install instructions for Neovim and dependencies.

#### Windows Installation

<details><summary>Windows with Microsoft C++ Build Tools and CMake</summary>
Installation may require installing build tools and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim) build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build[]( }
```
</details>
<details><summary>Windows with gcc/make using chocolatey</summary>
Alternatively, one can install gcc and make which don't require changing the config,
the easiest way is to use choco:

1. install [chocolatey](https://chocolatey.org/install)
either follow the instructions on the page or use winget,
run in cmd as **admin**:
```
winget install --accept-source-agreements chocolatey.chocolatey
```

2. install all requirements using choco, exit the previous cmd and
open a new one so that choco path is set, and run in cmd as **admin**:
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```
</details>
<details><summary>WSL (Windows Subsystem for Linux)</summary>

```
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>

#### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo mkdir -p /opt/nvim-linux-x86_64
sudo chmod a+rX /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>

