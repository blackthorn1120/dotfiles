Repository containing my dotfiles for my arch installation.

Additional information will be added to this README.md file as it is updated.

The ZDOTDIR variable must be set in /etc/zsh/zshenv to load the .zshrc correctly since it is in a non-standard location

The following lines have been added to /etc/security/pam_env.conf to set global environment variables appropriately
    XDG_CONFIG_HOME DEFAULT=@{HOME}/dotfiles
    VIMINIT DEFAULT=@{HOME}/dotfiles/nvim

Currently Hyprland needs to be started with the path to the config:
    Hyprland -c ~/dotfiles/hypr/hyprland.conf

zsh currently needs oh-my-posh installed for shell styling. The config for which is the tokyo-storm theme from the oh-my-posh Repository
