# config.nu
#
# Installed by:
# version = "0.102.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.


# config
$env.config.buffer_editor = "nvim"
$env.config.show_banner = false
$env.config.history.file_format = "sqlite"

# alias
alias ll = lsd -la
alias vim = nvim
alias vi = nvim
alias g = git
alias cat = bat

# plugins
## fzf
$env.FZF_DEFAULT_COMMAND = 'fd --type f --color never'
$env.FZF_DEFAULT_OPTS = '--color=bg+:-1,bg:-1 --preview-window=0'
$env.FZF_CTRL_T_COMMAND = 'fd --type f --color never'
$env.FZF_ALT_C_COMMAND = 'fd --type d --color never'

## zoxide
$env._ZO_FZF_OPTS = $"($env.FZF_DEFAULT_OPTS) --layout=reverse --height=30%"
source ~/.config/zoxide/init.nu

## starship
$env.STARSHIP_CONFIG = $"($env.APPDATA)/starship/config.toml"
source ~/.config/starship/init.nu
