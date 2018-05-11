echo "Mern-module Live USB configuration Starting... jputro/mern-module"
set -o verbose

echo "Installing Salt and Git"
sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Retrieving and Applying Settings"
echo 'master: localhost'|sudo tee /etc/salt/minion
git clone https://github.com/jputro/mern-module
cd mern-module/
bash highstate.sh

echo "Configuring Live Desktop"
setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki

echo "More tips on http://jaanaputro.wordpress.com"
echo "Done."
