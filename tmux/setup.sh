if $remove; then
  unlink "$HOME/.tmux.conf"
else
  ln -sf "$(pwd)/.tmux.conf" "$HOME/"
fi
