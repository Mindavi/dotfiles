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

  ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~/.vimrc
}

symlink

source ~/.bashrc
