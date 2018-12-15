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
$baseDir/botarchive.package.sh
cd $baseDir/../tmp
set -x
curl -i -X POST -H "Content-Type: multipart/form-data" \
    -F "droplet=@$filename" \
    -F "name=foo" \
    -F "password=bar" \
    $superbrain/api/v1/chatbot/$chatbotId/conversation/droplet/import
