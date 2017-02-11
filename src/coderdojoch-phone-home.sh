# Installing phonehome config file
if [ ! -f $CONFDIR/$CONF ]; then
    output "Installing phonehome config file"
    wget -qLO $CONFDIR/$CONF $URL/$CONFDIR/$CONF
else
    output "Phonehome config file exists"
fi


# Installing phonehome script
output "Installing phonehome script"
wget -qLO $SCRIPTDIR/$SCRIPT $URL/$SCRIPTDIR/$SCRIPT
chmod +x $SCRIPTDIR/$SCRIPT


# Installing phonehome cron
if [ ! -f $CRONDIR/$SCRIPT ]; then
    output "Installing phonehome cron"
    wget -qLO $CRONDIR/$SCRIPT $URL/$CRONDIR/$SCRIPT
else
    output "Phonehome cron exists"
fi
