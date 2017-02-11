# Installing visual studio code
output "Installing visual studio code"
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" > /tmp/vscode.deb
dpkg -i /tmp/vscode.deb
apt-get install -f -y
