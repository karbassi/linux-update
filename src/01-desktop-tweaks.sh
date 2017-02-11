# Changing desktop background
output "Changing desktop background"
wget -qLO /usr/share/backgrounds/coderdojochi.png \
     "$URL/usr/share/backgrounds/coderdojochi.png"

mv /usr/share/backgrounds/elementaryos-default \
   /usr/share/backgrounds/elementaryos-default-bak

ln -s /usr/share/backgrounds/coderdojochi.png \
      /usr/share/backgrounds/elementaryos-default

userrun 'gsettings set "org.gnome.desktop.background" "picture-uri" "file:///usr/share/backgrounds/coderdojochi.png"'
userrun 'gsettings set "org.gnome.desktop.background" "picture-options" "zoom"'


# Setting screensaver settings
output "Setting screensaver settings"
userrun 'gsettings set "org.gnome.desktop.screensaver" "lock-delay" 3600'
userrun 'gsettings set "org.gnome.desktop.screensaver" "lock-enabled" false'
userrun 'gsettings set "org.gnome.desktop.screensaver" "idle-activation-enabled" false'
userrun 'gsettings set "org.gnome.desktop.session" "idle-delay" 0'


# Disable guest login
output "Disable guest login"
wget -qLO /usr/share/lightdm/lightdm.conf/40-pantheon-greeter.conf \
     "$URL/usr/share/lightdm/lightdm.conf/40-pantheon-greeter.conf"
