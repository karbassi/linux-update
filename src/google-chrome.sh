# Adding Google to package manager
output "Adding Google to package manager"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -

rm -rf /etc/apt/sources.list.d/google-chrome.list*
rm -rf /etc/apt/sources.list.d/google-chrome*.list*
copy_files "/etc/apt/sources.list.d/google-chrome.list"


# Remove old Google chrome
output "Uninstalling google-chrome-stable"
apt-get autoremove --purge -y google-chrome-stable

# Installing google-chrome-stable
output "Installing google-chrome-beta"
rm -rf $HOMEDIR/.config/midori \
     $HOMEDIR/.config/google-chrome \
     $HOMEDIR/.config/google-chrome-beta

apt-get install -y google-chrome-beta

copy_files "/opt/google/chrome-beta/default_apps/external_extensions.json"

userrun 'google-chrome-beta --no-first-run > /dev/null 2>&1 &'
userrun 'sleep 10'
userrun 'killall chrome'
userrun 'sleep 5'

# copy_files "/home/coderdojochi/.config/google-chrome-beta/Default/Preferences"

copy_files "/home/coderdojochi/.config/plank/dock1/launchers/google-chrome-beta.dockitem"
