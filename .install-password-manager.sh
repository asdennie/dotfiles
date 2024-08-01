#!/bin/sh
# exit immediately if password-manager-binary is already in $PATH
type bw >/dev/null 2>&1 && exit

script_dir="$(dirname "$(realpath "$0")")"
echo $script_dir

case "$(uname -s)" in
Darwin)
    # commands to install password-manager-binary on Darwin
    ;;
Linux)
    # commands to install password-manager-binary on Linux
    . "$script_dir/.install-password-manager-linux.sh"

    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac