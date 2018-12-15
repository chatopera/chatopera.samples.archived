#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
. $baseDir/botarchive.localrc
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return

if [ ! -d $baseDir/../tmp ]; then
    mkdir $baseDir/../tmp
fi

cd $baseDir/../tmp
if [ -f $filename ]; then
    rm -rf $filename
fi

zip -j $filename -r ../botarchive
echo package done $baseDir/../tmp/$filename
