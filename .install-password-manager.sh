#!/bin/sh
# exit immediately if password-manager-binary is already in $PATH
type bw >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    # commands to install password-manager-binary on Darwin
    ;;
Linux)
    # commands to install password-manager-binary on Linux
    echo "Installing bitwarden cli"
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac