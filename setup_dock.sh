function setup_dock {
    # setup dock side
    # from https://medium.com/hybrid-maker/how-to-move-macs-dock-position-by-command-line-83bb9f47363f
    defaults write com.apple.dock orientation left
    killall Dock

    # setup dock size
    # from https://gist.github.com/svoboda-jan/2fbc61a123e235f21a57f664d4963309
    defaults write com.apple.dock tilesize -int 32
    killall Dock

    # setup dock autohide
    defaults write com.apple.dock autohide -int 1
    defaults write com.apple.WindowManager AutoHide -int 1
    killall Dock

    # setup dock apps
    # from https://gist.github.com/kamui545/c810eccf6281b33a53e094484247f5e8
    curl -fsSL https://gist.githubusercontent.com/kamui545/c810eccf6281b33a53e094484247f5e8/raw/c4f32fd8ed4bea9629b84b2858357d735192c75a/dock_functions.sh >> "./dock_functions.sh"
    source "./dock_functions.sh"

    #declare -a apps=(
    #    '/System/Applications/Utilities/Terminal.app'
    #    '/System/Applications/Music.app'
    #    '/Applications/Google Chrome.app'
    #    '/Applications/PhpStorm.app'
    #    '/Applications/Visual Studio Code.app'
    #    '/System/Applications/System Preferences.app'
    #);
    #
    #declare -a folders=(
    #    ~/Downloads
    #);

    clear_dock
    disable_recent_apps_from_dock

    #for app in "${apps[@]}"; do
    #    add_app_to_dock "$app"
    #done
    #
    #for folder in "${folders[@]}"; do
    #    add_folder_to_dock $folder
    #done

    killall Dock

    rm "./dock_functions.sh"
}
