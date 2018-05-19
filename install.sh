# Inspiration https://github.com/webpro/dotfiles/blob/master/install.sh

# Get current directory
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $DOTFILES_DIR

# Symlinking
function symlink() {
  ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~
  ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
  ln -sfv "$DOTFILES_DIR/runcom/.functions" ~
  ln -sfv "$DOTFILES_DIR/runcom/.aliases" ~
  ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~

  ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
  ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

  mkdir -p ~/.config/i3
  ln -sfv "$DOTFILES_DIR/i3/config" ~/.config/i3/config
  ln -sfv "$DOTFILES_DIR/i3/lock.sh" ~/.config/i3/lock.sh
  ln -sfv "$DOTFILES_DIR/i3/screenshot.sh" ~/.config/i3/screenshot.sh
  mkdir -p ~/.config/dunst
  ln -sfv "$DOTFILES_DIR/i3/dunstrc" ~/.config/dunst/dunstrc
  mkdir -p ~/.config/i3status
  ln -sfv "$DOTFILES_DIR/i3/i3status.conf" ~/.config/i3status/config
  # add to cron jobs to give low battery warning (* * * * *  bash /home/user_name/bin/battery_monitor.sh
  ln -sfv "$DOTFILES_DIR/i3/battery_monitor.sh" ~/bin/battery_monitor.sh
  mkdir -p ~/.config/compton
  ln -sfv "$DOTFILES_DIR/compton/compton.conf" ~/.config/compton/compton.conf

  ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~/.vimrc
}

symlink

source ~/.bashrc
