if $remove; then
  unlink "$HOME/.tmux.conf"
else
  ln -sf ".tmux.conf" "$HOME/"
fi
