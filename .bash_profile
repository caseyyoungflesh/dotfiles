#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#  Subset from: https://natelandau.com/my-mac-osx-bash_profile/
#
#  Sections:
#  1.  Environment Configuration
#  2.  Make Terminal Better (remapping defaults and adding functionality)
#  3.  Searching
#  4.  Networking
#  5.  System Operations & Information
#  6.  Reminders & Notes
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
    export PS2="| => "
    

#   Set Paths
#   ------------------------------------------------------------
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"


#   -----------------------------
#   2. MAKE TERMINAL BETTER
#   -----------------------------

alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
#alias tw='open -a TextWrangler'             # tw:           Opens file in text wrangler
alias bb='open -a BBEdit'                   # bb:           Opens file in BBEdit
alias np='start notepad++'                   # bb:           Opens file in BBEdit
alias ll='ls -FGlAhp'                       # ll:           Preferred 'ls' implementation
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias which='type -all'                     # which:        Find executables
alias so='source ~/.bash_profile'           # so:           reloads bash profile
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias scp='scp -v'                          # Preferred 'scp' implementation


#   ---------------------------
#   3. SEARCHING
#   ---------------------------

alias qfind="find . -name "                 # qfind:    Quickly search for file in current dir and below
alias efind="sudo find / -name "            # efind:    Search for file in entire filesystem
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory


#   ---------------------------
#   4. NETWORKING
#   ---------------------------

alias myip='curl ifconfig.co ifconfig.co/city ifconfig.co/country'     # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


#   ---------------------------------------
#   5. SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------

#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
    alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
    alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'




#   ---------------------------------------
#   6. REMINDERS & NOTES
#   ---------------------------------------


#To find files: find ~/ -name "postgis-2.0.0"

#Using . will only search the current directory. ~/ will search your entire home directory (likely where you downloaded it to). If you used wget as root, its possible it could be somewhere else so you could use / to search the whole filesystem

#To hide .zip file in a .gif: cat somefile.zip >> somefile.gif
#To open, unzip the .gif file

#To install ruby gems, use: sudo gem install GEMNAME -n /usr/local/bin
#as noted here: https://github.com/bundler/bundler/issues/4065

#can use pbcopy on macOS to copy things to clipboard
#for instance pwd | pbcopy
#or pbcopy < bla.txt
