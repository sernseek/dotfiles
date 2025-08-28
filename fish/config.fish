# my config
## starship prompt
starship init fish | source
## zoxide
zoxide init fish | source
## ediitor
set -gx EDITOR helix
## alias
alias hx='helix'
alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias pc='proxychains'
alias ghcs='gh copilot suggest'
alias ghce='gh copilot explain'
## PATH env
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.dotnet/tools
fish_add_path $HOME/.local/share/gem/ruby/3.3.0/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/development/flutter/bin
## android dev
set -gx JAVA_HOME /opt/android-studio/jbr
set -gx ANDROID_HOME "$HOME/Android/Sdk"
set -gx NDK_HOME "$ANDROID_HOME/ndk/"(uu-ls -1 $ANDROID_HOME/ndk)
set -gx WEBKIT_DISABLE_DMABUF_RENDERER 1
set -gx WINE_DRIVER wayland
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/sernseek/miniconda3/bin/conda
    eval /home/sernseek/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/sernseek/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/sernseek/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/sernseek/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<

# pnpm
set -gx PNPM_HOME "/home/sernseek/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
