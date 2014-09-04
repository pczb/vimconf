export CLICOLOR=1

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH=/usr/local/scala/bin:$PATH
#SPARK_HOME=~/spark-1.0.0-bin-hadoop2/
export PATH=/usr/local/bin/:$PATH
#export SPARK_HOME
alias ll='ls -l'
source ~/.git-completion.bash
