#  ---------------------------------------------------------------------------
#
#  Description:  Bash profile - loads other dotfiles
#  Subset mainly from: https://natelandau.com/my-mac-osx-bash_profile/
#  and
#  https://github.com/mathiasbynens/dotfiles
#
#  ---------------------------------------------------------------------------


#   ---------------------------------------
#   Load the shell dotfiles
#   ------------------------------------------------------------

# * ~/.path can be used to extend `$PATH`
# * ~/.bash_prompt can be used to chang prompt
# * ~/.exports can be used to set environment variables
# * ~/.aliases can be used to set aliases
# * ~/.functions can be used to set functions (similar to aliases but can take arguments)
# * ~/.extra can be used for other settings you don’t want to commit

source ~/.path
source ~/.bash_prompt
source ~/.exports
source ~/.aliases
source ~/.functions
source ~/.extra
