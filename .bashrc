# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# export PATH="$PATH:/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.40/bin"
export TOMCAT_HOME="/Library/Tomcat"
# -------
alias ll="ls -lta"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home"
export CATALINA_HOME="/usr/local/apache-tomcat-8.0.32"
export MAVEN=" /usr/local/Cellar/maven/3.3.9"
# export DA_UML_DIR="$HOME/dev/ds-architecture/directaccess"
# alias catalina_start="$CATALINA_HOME/bin/startup.sh"
# alias catalina_stop="$CATALINA_HOME/bin/shutdown.sh"
# alias update-da="cd ~/dev/spring-da-portal && mvn clean install && server stop server1 && cp target/directaccess.war /opt/DigitalServices/app/. && server start server1"

export WLP_USR_SERVERS_SERVER1="/Users/pairuser/apps/wlp/usr/servers/server1"
export WLP_DEPLOY="/opt/DigitalServices/app"
export env="LOCAL"
export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;8m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;44m\]\w\[$(tput sgr0)\]\[\033[38;5;183m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.40/bin:/Users/pairuser/bin:$CATALINA_HOME/bin:$JAVA_HOME/bin:/Users/pairuser/apps/wlp/bin:/usr/bin/ruby:$MAVEN/bin"
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.40/bin:/Users/pairuser/bin:$CATALINA_HOME/bin:$JAVA_HOME/bin:/Users/pairuser/apps/wlp/bin:/usr/bin/ruby"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/pairuser/bin:$CATALINA_HOME/bin:$JAVA_HOME/bin:/Users/pairuser/apps/wlp/bin:/usr/bin/ruby:/scripts"

# export PATH="/usr/local/sbin:/Applications/sonar-runner-2.4/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export PAGER='/bin/cat'

# added by travis gem
[ -f /Users/pairuser/.travis/travis.sh ] && source /Users/pairuser/.travis/travis.sh
