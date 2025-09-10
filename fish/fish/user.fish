# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added a config file for you to customize HyDE

#  Aliases 
# Override aliases here in 'config.fish' (already set )

# # Helpful aliases
# alias c='clear'                                                        # but don't use this one tho! just press `CLTR+l`
# alias l='eza -lh --icons=auto'                                         # long list
# alias ls='eza -1 --icons=auto'                                         # short list
# alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
# alias ld='eza -lhD --icons=auto'                                       # long list dirs
# alias lt='eza --icons=auto --tree'                                     # list folder as tree
# alias un='$aurhelper -Rns'                                             # uninstall package
# alias up='$aurhelper -Syu'                                             # update system/package/aur
# alias pl='$aurhelper -Qs'                                              # list installed package
# alias pa='$aurhelper -Ss'                                              # list available package
# alias pc='$aurhelper -Sc'                                              # remove unused cache
# alias po='$aurhelper -Qtdq | $aurhelper -Rns -'                        # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
# alias vc='code'                                                        # gui code editor
# alias fastfetch='fastfetch --logo-type kitty'

# # Directory navigation shortcuts
# alias ..='cd ..'
# alias ...='cd ../..'
# alias .3='cd ../../..'
# alias .4='cd ../../../..'
# alias .5='cd ../../../../..'

# # Always mkdir a path (this doesn't inhibit functionality to make a single dir)
# alias mkdir='mkdir -p'

#  This is your file 
# Add your configurations here
# my config
## starship prompt
starship init fish | source
## zoxide
zoxide init fish | source
## ediitor
set -gx EDITOR helix
## alias
alias hx='helix'
# alias ls='lsd'
# alias ll='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'
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
# set EDITOR nvim
# set EDITOR code

# set aurhelper yay
set aurhelper yay
