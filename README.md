# my-configs

Neovim and WezTerm configuration, symlinked into `~/.config` so editing
either the symlink path or the file here edits the same file.

## Setup on a new machine

```bash
git clone https://github.com/aardisaputra/my-configs.git ~/dotfiles
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/wezterm ~/.config/wezterm
```

Also required on the new machine:
- The **DaddyTimeMono Nerd Font Mono** font installed (used by `wezterm.lua`).
- `paper-texture.jpg` present at `~/Downloads/paper-texture.jpg` (referenced
  directly by the WezTerm background config).

## Saving changes

From `~/dotfiles`:

```bash
git add -A
git commit -m "describe the change"
git push
```
