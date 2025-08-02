if status is-login
    if test -z "$DISPLAY" -a "$(tty)" = /dev/tty1
        dbus-run-session Hyprland
    end
end

set -g fish_greeting
# Функция для отображения иконки дистрибутива
function _tide_item_distro_icon
    set_color normal
    printf '%s' ' '
end

# Добавление иконки в начало левого приглашения
set -g tide_left_prompt_items distro_icon pwd git newline
if status is-interactive
end

alias v="nvim"
alias dv="doas nvim"
alias dr="doas reboot"
alias dp="doas poweroff"
alias dz="doas zzz"
alias weather="curl wttr.in"
