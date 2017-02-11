# Installing google-chrome-stable
output "Installing google-chrome-beta"
rm -rf $HOMEDIR/.config/midori \
     $HOMEDIR/.config/google-chrome \
     $HOMEDIR/.config/google-chrome-beta

apt-get install -y google-chrome-beta

wget -qLO /opt/google/chrome-beta/default_apps/external_extensions.json \
   "$URL/opt/google/chrome-beta/default_apps/external_extensions.json"

userrun 'google-chrome-beta --no-first-run > /dev/null 2>&1 &'
userrun 'sleep 10'
userrun 'killall chrome'
userrun 'sleep 5'


# wget -qLO /home/coderdojochi/.config/google-chrome-beta/Default/Preferences \
#      "$URL/home/coderdojochi/.config/google-chrome-beta/Default/Preferences"

wget -qLO $HOMEDIR/.config/plank/dock1/launchers/google-chrome-beta.dockitem \
     "$URL$HOMEDIR/.config/plank/dock1/launchers/google-chrome-beta.dockitem"
