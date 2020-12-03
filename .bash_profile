# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=/opt/jdk-15.0.1/bin:$PATH
JAVA_HOME=/opt/jdk-15.0.1/java
export PATH
export JAVA_HOME
