#
# Regular cron jobs for the zxnftp package
#
0 4	* * *	root	[ -x /usr/bin/zxnftp_maintenance ] && /usr/bin/zxnftp_maintenance
