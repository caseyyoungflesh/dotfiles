# dotfiles

dotfiles for bash shell loaded on login (subset for hpc resources [here](https://github.com/caseyyoungflesh/hpc_dotfiles)):

 * `~/.bash_profile` used to source other dotfiles
 * `~/.bash_prompt` used to change shell prompt. Designed to be used with [Solarized Dark theme](http://ethanschoonover.com/solarized).
 * `~/.exports` used to set environment variables
 * `~/.aliases` used to set aliases for shell commands. NOTE: some commands in `.aliases` depend on GNU coreutils for the bash shell. Install with macports or [homebrew](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities).
 * `~/.functions` used to set functions (similar to aliases but can take arguments)
 * `~/.path` used to extend `$PATH` (**on local machine but not in repo**)
 
For git:

 * `~/.gitconfig` used to configure git options
 * `~/.gitignore_global` used to specify files to ignore globally
 * `~/.gitcheck` script used to check which repos on local machine have changes and/or need to be pushed to or pulled from remote - aliased as `check`
 * `~/.gitpullall` script used to pull all repos on local machine that are behind remote - aliased as `gpull`

When setting up a new machine:

 * `~/.macos` used to set preferred macOS defaults (run using `source ~/.macOS`)

&nbsp;




Largely cobbled together from:  
https://natelandau.com/my-mac-osx-bash_profile/  
and  
https://github.com/mathiasbynens/dotfiles
