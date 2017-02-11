# 1. install git
# 2. checkout this repo into /var/coderdojochi/

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-get update
apt-get install -y git

git clone https://github.com/karbassi/linux-update /var/coderdojochi
cd /var/coderdojochi
git checkout feature/modularize
