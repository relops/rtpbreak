#
# Regular cron jobs for the rtpbreak package
#
0 4	* * *	root	[ -x /usr/bin/rtpbreak_maintenance ] && /usr/bin/rtpbreak_maintenance
