#!/bin/bash

KITTY_CONFIG_DIR=$HOME/.config/kitty/
KITTY_THEME_DIR=$HOME/configs/kitty/themes/

main () {
    cd "$KITTY_CONFIG_DIR"
    echo "current theme is: "
    echo "$(file $KITTY_CONFIG_DIR/theme.conf | awk '{print $5}')"

    echo "Enter theme name: " 
    read theme
    echo "got $theme"

    ln --force -s "$KITTY_THEME_DIR$theme" "theme.conf"

    echo "Theme set to $theme"
}

main "$@"
