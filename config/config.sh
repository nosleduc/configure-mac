#!/usr/bin/env sh

SOURCE_FOLDER="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_FOLDER="${HOME}/.config"

add_link() {
  SOURCE=$1
  TARGET=$2
  if [ ! -L "${TARGET}" ]; then
    ln -s "${SOURCE}" "${TARGET}"
  else
    echo "Cannot install ${TARGET} with ${SOURCE}"
  fi
}

# install karabiner configuration
add_link "${SOURCE_FOLDER}/karabiner" "${TARGET_FOLDER}/karabiner"

# install nvim configuration
add_link "${SOURCE_FOLDER}/nvim" "${TARGET_FOLDER}/nvim"

# install leader key configuration
LEADER_CONFIG_FOLDER="${HOME}/Library/Application Support/Leader Key"
mkdir -p "${LEADER_CONFIG_FOLDER}"
add_link "${SOURCE_FOLDER}/Leader Key/config.json" "${LEADER_CONFIG_FOLDER}/config.json"
