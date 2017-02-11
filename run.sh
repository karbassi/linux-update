URL='https://raw.githubusercontent.com/CoderDojoChi/linux-update/master'

HOMEDIR=/home/coderdojochi

SCRIPTDIR=/etc/init.d
SCRIPT=coderdojochi-phonehome

CONFDIR=/etc/init
CONF=$SCRIPT.conf

CRONDIR=/etc/cron.d

MACHINE_TYPE=`uname -m`


# Update Script Running
userrun 'notify-send --urgency=critical "Update Script Running"'

bash ./src/*
