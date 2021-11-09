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

alias vimrc="vim ~/dev/dotfiles/vim/vimrc"
alias zshrc="vim ~/.zshrc"

alias gst='git status'
alias gpom='git push origin master'
alias gpr="git pull --rebase"

alias gpom='git push origin master'
alias ag='ag --path-to-ignore ~/.agignore'

alias morning='gco master && gpr origin master && nvm use && yarn'
alias curl='noglob curl'
