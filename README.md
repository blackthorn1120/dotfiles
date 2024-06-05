Repository containing my dotfiles for my arch installation.

Additional information will be added to this README.md file as 
it is updated.

The ZDOTDIR variable must be set in /etc/zsh/zshenv to load 
the .zshrc correctly since it is in a non-standard location

The following lines have been added to /etc/security/pam_env.conf
to set global environment variables appropriately
    XDG_CONFIG_HOME DEFAULT=@{HOME}/dotfiles

Currently Hyprland needs to be started with the path to the 
config:
    Hyprland -c ~/dotfiles/hypr/hyprland.conf
