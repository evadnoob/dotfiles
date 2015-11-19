# setup java/jdk
if [ -f /usr/libexec/java_home  ]; then 
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.7.0)"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8.0)"
export PATH=${JAVA_HOME}/bin:$PATH

export SBT_OPTS=-XX:MaxPermSize=256m

fi
