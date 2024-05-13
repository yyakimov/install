function install_brew {
    # install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # post brew install
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/yuriiyakimov/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
}

function install_vscode {
    brew install --cask visual-studio-code

    code --install-extension ms-vscode-remote.remote-containers
    code --install-extension ms-azuretools.vscode-docker
    code --install-extension eamodio.gitlens
}
