#!/bin/sh

BASEDIR=`dirname $0`

. $BASEDIR/functions

echo "This will override your existing setup files."
prompt "Do you wish to continue? " || exit 1

echo
echo "Copy profile to $HOME/.profile"
run cp -f $BASEDIR/profile $HOME/.profile

if [ `uname` = "Darwin" ]; then
    echo
    echo "OSX has been detected"
    if prompt "Should we load settings? "; then
        echo "Loading settings"
        run $BASEDIR/OSX/settings
    fi
fi
echo
echo "Finished"
