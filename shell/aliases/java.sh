# set JAVA_HOME if on Mac OS
if [ -z "$JAVA_HOME" -a -d /System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home ]
then
  export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
fi

if [ -d "$JAVA_HOME/bin" ] ; then
  export PATH="$JAVA_HOME/bin:$PATH"
fi
