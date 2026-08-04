cat ~/.cache/matugen/sequences.txt 2> /dev/null
set -gx fish_greeting ' '
set -gx SUDO_PROMPT "$(tput setaf 1)󱈸 Password for $(tput setaf 1 bold)%p:$(tput sgr0) "
set -gx PATH "$PATH:/home/zek/.local/bin"

if status is-interactive
    # Commands to run in interactive sessions can go here

# autostart
# $HOME/scripts/shipfetch/shipfetch.sh
fastfetch
starship init fish | source

# aliases
alias ls='eza --all --icons auto'
alias grep='grep --color=auto'
alias configdotfish='$EDITOR ~/.config/fish/config.fish'
alias eimikosfetch='fastfetch -c ~/eimikosff3.jsonc'
alias wriorindefetch='fastfetch -c /home/zek/wriorinde.jsonc --logo-recache'
alias shipfetch="~/scripts/shipfetch/shipfetch.sh"

alias screenrec="/home/zek/scripts/screenrec.sh"

alias mconf='micro ~/.config/mango/config.conf ~/.config/mango/modules/*.conf'
alias wbref='killall -SIGUSR2 waybar'
alias wbconf='yazi ~/.config/waybar'

alias cl="matugen --dry-run --verbose --show-colors --continue-on-error -r gaussian -t scheme-tonal-spot color hex $(cat ~/.config/matugen/current-color)"
alias cr="matugen --verbose --show-colors --continue-on-error -r gaussian -t scheme-tonal-spot color hex $(cat ~/.config/matugen/current-color)"

alias psyu='sudo pacman -Syu'
alias psy='sudo pacman -Sy'
alias psyy='sudo pacman -Syy'

alias pm='sudo pacman'

alias syu='sudo pacman -Syu'
alias sy='sudo pacman -Sy'
alias syy='sudo pacman -Syy'

alias ysyu='paru -Syu'
alias ysy='paru -Sy'
alias ysyy='paru -Syy'

alias cpup='sudo cpupower'
alias cpupower='sudo cpupower'


end




