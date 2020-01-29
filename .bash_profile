#  ---------------------------------------------------------------------------
#
#  Description:  Bash profile - loads other dotfiles
#  Subset mainly from: 
#  https://natelandau.com/my-mac-osx-bash_profile/
#  and
#  https://github.com/mathiasbynens/dotfiles
#
#  ---------------------------------------------------------------------------


#   ---------------------------------------
#   Load the shell dotfiles
#   ------------------------------------------------------------

# * ~/.path can be used to extend `$PATH` (not in repo)
# * ~/.bash_prompt can be used to change prompt
# * ~/.exports can be used to set environment variables
# * ~/.aliases can be used to set aliases
# * ~/.functions can be used to set functions (similar to aliases but can take arguments)


source ~/.path
source ~/.bash_prompt
source ~/.exports
source ~/.aliases

#silence deprecation warning about bash on Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1


#prompt for SWC bash/git workshops
#PS1="____________________________________________"; PS1+="\[${bold}\]\n"; PS1+="\h:"; PS1+="\w "; PS1+="\u$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
