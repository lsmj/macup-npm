#!/bin/bash
# shellcheck disable=SC2154,SC2088,SC2046

function install_node_package {
  local package=$1
  report_from_package " $package being installed/updated"
  npm -g install "$package"
}

if [ ! ${#macup_node_packages_npm[@]} -eq 0 ]; then
  if [ "$(command -v node)" ]; then
    for ((i=0; i<${#macup_node_packages_npm[@]}; ++i)); do
      install_node_package "${macup_node_packages_npm[i]}"
    done
    report_from_package " Global NodeJS packages:"
    npm list -g --depth 0
    report_from_package " Outdated global NodeJS packages:"
    npm outdated -g
  else
    report_from_package " NodeJS is not installed. Install NodeJS and restart macup."
  fi
else
  report_from_package " WARNING: No items in the config file"
fi
