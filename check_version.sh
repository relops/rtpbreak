#!/bin/bash
PATH=${PATH}:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin
################################################################################
#
# check_version.sh by xenion -- 2008-02-23 10:39 -- v.1ce37613244d6fcb5d0ba4be290c9558
#

latest_version_absurl="http://xenion.antifork.org/rtpbreak/VERSION"
this_version_relpath="src/VERSION"

echo "Getting file $latest_version_absurl ..."

latest_version="`wget -qO- "$latest_version_absurl" | cut -f2- -d=`"
this_version="`cat "$this_version_relpath" | cut -f2- -d=`"

if [ "$latest_version" = "" ] ;
  then
    echo "ERR: unable to wget $latest_version_absurl"
  else
    if [ "$latest_version" = "$this_version" ] ;
       then
         echo "You have the latest available version! (latest:$latest_version == this:$this_version)"
       else
         echo "You have not the latest available version! (latest:$latest_version != this:$this_version)"
	 echo "You can get it at http://xenion.antifork.org/"
    fi
fi





