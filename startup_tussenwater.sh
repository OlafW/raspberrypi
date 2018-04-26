#! /bin/sh
# /etc/init.d/startup_tussenwater

### BEGIN INIT INFO
# Provides:          startup_tussenwater
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Tussenwater startup script
# Description:       Tussenwater startup script
### END INIT INFO

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting startup_tussenwater"
    # run application you want to start
    /home/pi/tussenwater/play_tussenwater
    ;;
  stop)
    echo "Stopping startup_tussenwater"
    # kill application you want to stop
    killall /home/pi/tussenwater/play_tussenwater 
    ;;
  *)
    echo "Usage: /etc/init.d/startup_tussenwater {start|stop}"
    exit 1
    ;;
esac

exit 0
