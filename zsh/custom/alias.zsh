# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi

alias zshalias="vim $HOME/.oh-my-zsh/custom/alias.zsh"
alias zshdir="vim $HOME/.oh-my-zsh/lib/directories.zsh"
alias dev="cd ~/dev/"

alias be="bundle exec"
alias ber="bundle exec rake"
alias bers="bundle exec rspec"

alias vimrc="vim ~/dev/dotfiles/vim/vimrc"
alias zshrc="vim ~/.zshrc"

alias gst='git status'
alias gpom='git push origin master'
alias gpr="git pull --rebase"

alias run-gateway-api='goto gateway-api && nvm use 8.11 && make compose && make server'
alias debug-gateway-api='goto gateway-api && make compose-up-base && make debug'

alias run-app-api=' goto app-api && nvm use 6.1 && make server'

alias run-segment-app='goto app && nvm use 8.11 && yarn dev -- --api=localhost'
alias gpom='git push origin master'
alias ag='ag --path-to-ignore ~/.agignore'
alias whoknows='cat ~/Desktop/whoknows.txt | pbcopy'
alias good-morning='sh ./good-morning.sh'
