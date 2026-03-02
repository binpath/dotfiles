# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

Personal dotfiles for shell (bash/zsh), editors (vim/neovim), tmux, git, and development utilities. The repo is symlinked into `$HOME` via the `dotsetup` script.

## Installation

```bash
# Symlink dotfiles into $HOME (creates ~/.bashrc, ~/.vimrc, ~/.tmux.conf, etc.)
./dotsetup

# SAP App Studio environment setup (clones repo + installs tools)
./appstudiosetup
```

`dotsetup` creates symlinks with a dot prefix (e.g., `bashrc` → `~/.bashrc`). There is no Makefile or build step.

## Structure

- **`bashrc`** — Main bash config; sources all files in `bashrc.d/` in order
- **`bashrc.d/`** — Modular bash config, numbered by load order (00–99)
- **`zshrc`** — Zsh config with oh-my-zsh (theme: refined, plugins: git, fzf)
- **`config/nvim/`** — AstroNvim v4+ config using Lazy.nvim; entry point is `init.lua`
- **`scripts/`** — 100+ utility scripts on `$PATH` via `~/.local/bin` or `$WORK/bin`
- **`tmux.conf`** — Tmux config; prefix is `Ctrl+Space`, vim-style pane nav with h/j/k/l
- **`gitconfig`** — Git config; uses `gh` for credentials, user is Cesar Felce (binpath)

## Key Conventions

- `$DOTFILES` is set to `$HOME/dotfiles`
- `$WORK` is set to `/work` (see `bashrc.d/50-globals.sh`)
- `$EDITOR` is `nvim`
- Leader key in both vim and neovim is `<Space>`
- New bash utility scripts go in `scripts/` and should be named without extension (shell scripts as executables)
- Modular bash additions go in `bashrc.d/` with an appropriate two-digit prefix

## Neovim

Config lives in `config/nvim/` (symlinked to `~/.config/nvim`). Uses AstroNvim v4+ — custom plugins go in `lua/plugins/`, user options/mappings in `lua/polish.lua`. Plugin manager is Lazy.nvim; lock file is `lazy-lock.json`.

## Tmux Sessions

Session names have color-coded status bars defined in `tmux.conf`:
- `writing` → red/blue
- `dotfiles` → red/green
- `focus` → red/yellow
