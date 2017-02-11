# Uninstalling unused packages
output "Uninstalling unused packages"
command -v zeitgeist-daemon &> /dev/null
if [ $? -eq 0 ]; then
    zeitgeist-daemon --quit
fi

apt-get autoremove --purge -y activity-log-manager-common
apt-get autoremove --purge -y activity-log-manager-control-center
apt-get autoremove --purge -y deja-dup
apt-get autoremove --purge -y empathy-*
apt-get autoremove --purge -y firefox*
apt-get autoremove --purge -y geary
apt-get autoremove --purge -y gnome-online-accounts
apt-get autoremove --purge -y indicator-messages
apt-get autoremove --purge -y midori-granite
apt-get autoremove --purge -y modemmanager
apt-get autoremove --purge -y noise
apt-get autoremove --purge -y scratch-text-editor
apt-get autoremove --purge -y software-center
apt-get autoremove --purge -y update-manager
apt-get autoremove --purge -y zeitgeist
apt-get autoremove --purge -y zeitgeist-core
apt-get autoremove --purge -y zeitgeist-datahub

apt-get autoremove -y
apt-get autoclean -y
