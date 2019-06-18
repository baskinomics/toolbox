#!/bin/bash

# Installs various VSCode extensions
function install_vscode_extensions ()
{
    code --install-extension be5invis.toml
    code --install-extension eddyvinck.Internetstorm
    code --install-extension ms-vscode.Go
    code --install-extension redhat.java
    code --install-extension rokoroku.vscode-theme-darcula
    code --install-extension rust-lang.rust
    code --install-extension vadimcn.vscode-lldb
    code --install-extension VisualStudioExptTeam.vscodeintellicode
    code --install-extension vscjava.vscode-java-debug
    code --install-extension vscjava.vscode-java-dependency
    code --install-extension vscjava.vscode-java-pack
    code --install-extension vscjava.vscode-java-test
    code --install-extension vscjava.vscode-maven
    code --install-extension webfreak.debug
}