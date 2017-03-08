# dotfiles

dotfiles loaded on login:

 * `~/.bash_profile` used to source other dotfiles
 * `~/.bash_prompt` used to change shell prompt
 * `~/.exports` used to set environment variables
 * `~/.aliases` used to set aliases for shell commands
 * `~/.functions` used to set functions (similar to aliases but can take arguments)
 * `~/.path` used to extend `$PATH` (on local machine but not in repo)
 * `~/.extra` used for other settings you don’t want to commit, such as git global config credentials (on local machine but not in repo)

When setting up a new machine:

 * `~/.macos` used to setup preferred macOS defaults (run using `source ~/.macOS`)


Largely cobbled together from:  
https://natelandau.com/my-mac-osx-bash_profile/  
and  
https://github.com/mathiasbynens/dotfiles
