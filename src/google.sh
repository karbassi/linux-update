
# Adding Google to package manager
output "Adding Google to package manager"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -

rm -rf /etc/apt/sources.list.d/google-chrome.list*
wget -qLO /etc/apt/sources.list.d/google-chrome.list \
     "$URL/etc/apt/sources.list.d/google-chrome.list"
