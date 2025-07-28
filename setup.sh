#!/bin/bash
SETUP_FILE="setup.sh"
CONFIG_ARR_NAME="config_arr"
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
  config_path="$(pwd)/${config}"
  if [[ -d $config_path ]]; then
    declare ${CONFIG_ARR_NAME}=""
    source "${config_path}/${SETUP_FILE}"

    if [[ -n ${!CONFIG_ARR_NAME} ]]; then
      config_arr_ref="${CONFIG_ARR_NAME}[@]"
      for config_var_name in "${!config_arr_ref}"; do
        if [[ -n ${!config_var_name} ]]; then
          target=${config_var_name}[0]
          target_path="${config_path}/${!target}"
          link_path=${config_var_name}[1]; link_path=${!link_path}
          unlink_path="${link_path}/${!target}"

          if $remove; then
            unlink "${unlink_path}"
          else
            ln -sfv "${target_path}" "${link_path}"
          fi
          declare ${config_var_name}=""
        else
          echo "not found \`${config_var_name}\` variable"
        fi
      done
    else
      echo "not found \`${CONFIG_ARR_NAME}\` variable"
    fi
    echo "${status}ed ${config}"
  else
    echo "'$fn' not found"
  fi
done

echo "Done"
