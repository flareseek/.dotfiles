#!/bin/bash
DOTFILES_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
HOME_DIR=$HOME
ITEM_LIST=(
  "tmux"
  "wezterm"
)
remove=false
exclude=false
status="install"
targets=()

while getopts "er" opt; do
  case $opt in
    e)
      exclude=true
      ;;
    r)
      remove=true
      ;;
  esac
done
shift $((OPTIND-1))

tmux() {
  if $remove; then
    unlink "$HOME/.tmux.conf"
  else
    ln -sf "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/"
  fi
}

wezterm() {
  if $remove; then
    unlink "$HOME/.wezterm.lua"
  else
    ln -sf "$DOTFILES_DIR/wezterm/.wezterm.lua" "$HOME/"
  fi
}

echo "Setting up dotfiles..."
if [ $# -gt 0 ]; then
  if $exclude; then
    status="unlink"
    for item in "${ITEM_LIST[@]}"; do
      skip=false
      for ex in "$@"; do
        if [[ $item == $ex ]]; then
          skip=true
          break;
        fi
      done
      if ! $skip; then
        targets+=("$item")
      fi
    done
  else
    targets=("$@")
  fi
else
  targets=("${ITEM_LIST[@]}")
fi

echo "${status}ing ${targets[@]}"

for fn in "${targets[@]}"; do
  if declare -f "$fn" > /dev/null; then
    "$fn"
    echo "${status}ed $fn"
  else
    echo "'$fn' not found"
  fi
done
echo "Done"
