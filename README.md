# my-configs

Neovim, WezTerm, and zsh configuration, symlinked into their expected
locations so editing either the symlink path or the file here edits the
same file.

## Setup on a new machine

```bash
git clone https://github.com/aardisaputra/my-configs.git ~/dotfiles
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/wezterm ~/.config/wezterm
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

Also required on the new machine:
- The **DaddyTimeMono Nerd Font Mono** font installed (used by `wezterm.lua`).
- `paper-texture.jpg` present at `~/Downloads/paper-texture.jpg` (referenced
  directly by the WezTerm background config).
- **oh-my-zsh** installed (`.zshrc` expects `$HOME/.oh-my-zsh` to exist —
  see https://ohmyz.sh/#install).
- **zsh-autosuggestions** installed via Homebrew:
  `brew install zsh-autosuggestions` (`.zshrc` sources it directly from the
  brew prefix).
- **miniconda3** and the **Google Cloud SDK**, if you want those blocks in
  `.zshrc` to do anything — they're each guarded by a file-existence check
  (`$HOME`-relative), so they silently no-op if not installed at the
  expected `$HOME/miniconda3` / `$HOME/google-cloud-sdk` paths.

## Saving changes

From `~/dotfiles`:

```bash
git add -A
git commit -m "describe the change"
git push
```
