if $remove; then
  unlink "$HOME/.wezterm.lua"
else
  ln -sf "$(pwd)/.wezterm.lua" "$HOME/"
fi
