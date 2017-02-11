# Adding Elementary Tweaks to package manager
output "Adding Elementary Tweaks to package manager"
add-apt-repository ppa:mpstark/elementary-tweaks-daily -y

# Installing elementary-tweaks
output "Installing elementary-tweaks"
apt-get install -y elementary-tweaks
