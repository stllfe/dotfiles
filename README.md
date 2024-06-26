# My dotfiles

Configuration files for the tools that I use.

## Configure

1. Install [Homebrew](https://brew.sh):

   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

1. Clone and point to `~/.config` directory:

   ```shell
   ln -s /path/to/dotfiles ~/.config
   ```

   or `git clone` directly to `~/.config`.

1. Inside the directory, run the brew installation:

   ```shell
   cd ~/.config && /opt/homebrew/bin/brew bundle install
   ```

1. Point `zsh` to look for configuration in the `.config/zsh`:

   ```shell
   cd ~ && echo "export ZDOTDIR=~/.config/zsh" > .zprofile
   ```

1. Restart the shell, everything should just work!

**TODO**:

- [ ] Add [fuzzy file finding](https://github.com/junegunn/fzf)
- [ ] Add vi-mode stuff once I get used to VIM more
- [x] Add setup instuctions
- [ ] Add an entry configuration script
- [ ] Add Ubuntu support
- [ ] `wip` Mac system stuff settings (like [here](https://github.com/geerlingguy/dotfiles/blob/master/.osx))
- [ ] AppStore applications

**WHISH**:

- [x] ~~VS Code and iTerm2 had the same color theme~~

  -> this is actually not needed, since I'm trying to make it with a default Term on macOS for now and looking for replacement to VS Code (hate it kinda)

- [ ] I had my light and dark themes of choice specified here
- [ ] I could utilize some automations tools like Ansible
