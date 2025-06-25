#!/bin/bash
SETUP_FILE="setup.sh"
CONFIG_LIST=()
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
      status="unlink"
      ;;
  esac
done
shift $((OPTIND-1))

echo "Setting up dotfiles..."

cd "$(dirname "${BASH_SOURCE[0]}")"
for path in *; do
  if [ -d "$path" ]; then
    CONFIG_LIST+=("$path")
  fi
done

if [ $# -gt 0 ]; then
  if $exclude; then
    for config in "${CONFIG_LIST[@]}"; do
      skip=false
      for ex in "$@"; do
        if [[ $config == $ex ]]; then
          skip=true
          break;
        fi
      done
      if ! $skip; then
        targets+=("$config")
      fi
    done
  else
    targets=("$@")
  fi
else
  targets=("${CONFIG_LIST[@]}")
fi

echo "${status}ing ${targets[@]}"

for config in "${targets[@]}"; do
  if [ -d "$config" ]; then
    cd "$config"
    source "${SETUP_FILE}"
    cd ".."

    echo "${status}ed ${config}"
  else
    echo "'$fn' not found"
  fi
done

echo "Done"
