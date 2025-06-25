if $remove; then
  unlink "$HOME/.wezterm.lua"
else
  ln -sf ".wezterm.lua" "$HOME/"
fi
