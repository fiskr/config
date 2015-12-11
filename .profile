#!/bin/bash 


export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
#export JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)
#alias java6='export JAVA_HOME=$JAVA_6_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
export JAVA_HOME=$JAVA_7_HOME
export TOMCAT_HOME=/usr/local/apache-tomcat-7.0.54
export M2_HOME=/usr/local/apache-maven-3.2.1
export M2=$M2_HOME/bin
export VLT_HOME=/usr/local/vault-cli-2.4.34
export NODE_HOME=/usr/local/bin/node_modules
export PATH=$PATH:$M2:$VLT_HOME/bin:$NODE_HOME/.bin

export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2:$DYLD_LIBRARY_PATH
export PATH=/opt/oracle/instantclient_11_2:$PATH
export ORACLE_HOME=/opt/oracle/instantclient_11_2
export CLASSPATH=.:/opt/oracle/instantclient_11_2/*.jar

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias intellij="open -a /Applications/IntelliJ\ IDEA\ 14\ CE.app/"
##
# Your previous /Users/162084/.profile file was backed up as /Users/162084/.profile.macports-saved_2014-07-31_at_16:49:45
##

# MacPorts Installer addition on 2014-07-31_at_16:49:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#20150316 adding PI constant
declare -r PI="$(cat ~/.pi.txt)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias grunt-gac="grunt less:gac && grunt copy && grunt bless:css"
alias grunt-diy="grunt less:diy && grunt copy && grunt bless:css"


alias start-aws="bash $HOME/scripts/aws.sh start"
alias stop-aws="bash $HOME/scripts/aws.sh stop"
alias ssh-aws="ssh -i $HOME/.ssh/pem/hgtv-dev.pem ec2-user@10.49.33.222"
alias ls-aws="echo 10.49.33.222"

alias getPass="bash $HOME/scripts/profile/getPass.sh"

alias makeNewBranch="bash $HOME/scripts/profile/makeNewBranch.sh"

export NVM_DIR="/Users/162084/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

set_prompt() {
	last_command=$?
	PS1=""
	# If it was successful, print a green check mark. Otherwise, print
	# a red X.
	if [[ $last_command == 0 ]]; then
			PS1+='\[\e[01;32m\]\342\234\223 \e[m'
	else
			PS1+='\[\e[01;31m\]\342\234\227 \e[m'
	fi
	PS1+='\W $(if [ $(git branch &> /dev/null; echo $? ) -eq 0 ]; then git branch | grep \* | sed "s/\* \(.*\)$/\(\1\)/g"; fi)$ '
}

PROMPT_COMMAND='set_prompt'

alias grunt-all="cd $HOME/cq/sni-foundation/sni-foundation-view && grunt && terminal-notifier -title \"Grunt\" -message \"Build finished\""

export TDS="/usr/local/texlive/2015/texmf-dist/"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/162084/.gvm/bin/gvm-init.sh" ]] && source "/Users/162084/.gvm/bin/gvm-init.sh"

##
# Your previous /Users/162084/.profile file was backed up as /Users/162084/.profile.macports-saved_2015-08-13_at_13:39:15
##

# MacPorts Installer addition on 2015-08-13_at_13:39:15: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#export PATH="/opt/local/libexec/gnubin:$PATH"
export scrippsUtilitiesConfigLocation="/Users/162084/projects/utilities/core/config.sh"
alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox-bin"
export GRADLE_HOME="/Users/162084/Tools/gradle/gradle-2.6"
export PATH="$GRADLE_HOME/bin:$PATH"
export PATH="/Users/162084/Tools/icon-v951/bin:${PATH}"
export PATH="$HOME/Library/Haskell/bin:$PATH"

##
# Your previous /Users/162084/.profile file was backed up as /Users/162084/.profile.macports-saved_2015-10-21_at_15:54:23
##

# MacPorts Installer addition on 2015-10-21_at_15:54:23: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias toCode="python ~/projects/lesen/to-code/src/to-code.py"
alias toDocumentation="python ~/projects/lesen/to-documentation/src/to-documentation.py"
