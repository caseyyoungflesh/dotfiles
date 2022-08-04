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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/caseyyoungflesh/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/caseyyoungflesh/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/caseyyoungflesh/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/caseyyoungflesh/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#source chruby (to manage ruby versions)
source /opt/local/share/chruby/chruby.sh
