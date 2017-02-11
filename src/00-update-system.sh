# Upgrading system
output "Upgrading system"
apt-get update
apt-get dist-upgrade -y

# Install required packages
apt-get install software-properties-common

# Setting up the dock
output "Setting up the dock"
rm $HOMEDIR/.config/plank/dock1/launchers/*.dockitem

# If 0, the dock won't hide.
sed -i 's/HideMode=3/HideMode=0/g' $HOMEDIR/.config/plank/dock1/settings

# List of *.dockitems files on this dock.
sed -i 's/DockItems=*/DockItems=pantheon-files.dockitem;;atom.dockitem;;google-chrome-beta.dockitem/g' $HOMEDIR/.config/plank/dock1/settings
