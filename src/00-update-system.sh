userrun() {
    sudo -H -u coderdojochi bash -c "$1";
}

output() {
    echo "\n\n####################\n# $1\n####################\n\n";
    userrun "notify-send --urgency=low '$1'";
}

# Upgrading system
output "Upgrading system"
apt-get update
apt-get dist-upgrade -y

# Setting up the dock
output "Setting up the dock"
rm $HOMEDIR/.config/plank/dock1/launchers/*.dockitem

# If 0, the dock won't hide.
sed -i 's/HideMode=3/HideMode=0/g' $HOMEDIR/.config/plank/dock1/settings

# List of *.dockitems files on this dock.
sed -i 's/DockItems=*/DockItems=pantheon-files.dockitem;;atom.dockitem;;google-chrome-beta.dockitem/g' $HOMEDIR/.config/plank/dock1/settings
