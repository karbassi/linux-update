export URL='https://raw.githubusercontent.com/CoderDojoChi/linux-update/master'

export HOMEDIR=/home/coderdojochi

export SCRIPTDIR=/etc/init.d
export SCRIPT=coderdojochi-phonehome

export CONFDIR=/etc/init
export CONF=$SCRIPT.conf

export CRONDIR=/etc/cron.d

export MACHINE_TYPE=`uname -m`

userrun() {
    sudo -H -u coderdojochi bash -c "$1";
}

output() {
    echo "\n\n####################\n# $1\n####################\n\n";
    userrun "notify-send --urgency=low '$1'";
}

export -f userrun
export -f output


# Update Script Running
userrun 'notify-send --urgency=critical "Update Script Running"'

bash ./src/*
