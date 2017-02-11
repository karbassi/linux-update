# Restart dock
output "Restart dock"
killall plank

# Cleanup
output "Cleanup"
apt-get autoremove -y
apt-get autoclean -y
rm -rf {/root,/home/*}/.local/share/zeitgeist


# Remove old files that students might of saved
rm -rf $HOMEDIR/Documents/*
rm -rf $HOMEDIR/Downloads/*
rm -rf $HOMEDIR/Music/*
rm -rf $HOMEDIR/Pictures/*
rm -rf $HOMEDIR/Public/*
rm -rf $HOMEDIR/Templates/*
rm -rf $HOMEDIR/Videos/*
