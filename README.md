# dotfiles

dotfiles for bash shell loaded on login:

 * `~/.bash_profile` used to source other dotfiles
 * `~/.bash_prompt` used to change shell prompt
 * `~/.exports` used to set environment variables
 * `~/.aliases` used to set aliases for shell commands
 * `~/.functions` used to set functions (similar to aliases but can take arguments)
 * `~/.path` used to extend `$PATH` (**on local machine but not in repo**)
 * `~/.extra` used for other settings you don’t want to commit, such as git user info (**on local machine but not in repo**)
 
For git:

 * `~/.gitconfig` used to configure git options
 * `~/.gitignore_global` used to specify files to ignore globally

When setting up a new machine:

 * `~/.macos` used to set preferred macOS defaults (run using `source ~/.macOS`)

&nbsp;

Largely cobbled together from:  
https://natelandau.com/my-mac-osx-bash_profile/  
and  
https://github.com/mathiasbynens/dotfiles
