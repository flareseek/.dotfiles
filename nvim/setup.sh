if $remove; then
  unlink "$HOME/.config/nvim"
else
  ln -sf "$(pwd)/nvim" "$HOME/.config/"
fi

