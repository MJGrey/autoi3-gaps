echo "Update & Upgrade!"

cd /etc

if [ -d /etc/pacman.d ]

then
    sudo pacman -Syu

fi

if [ -d /etc/apt ]

then
    sidp apt-get && sudo apt-get ugprade -y

fi

echo " ---------------------------------------------------------------"

echo "These are the programs and dependencies"


sudo apt-get install python python3 python-pip python3-pip python-dev build essen$
sudo pip install --upgrade -y && sudo pip install upgrade --virtualenv
sudo apt-get install net-tools -y
sudo apt-get install gnome-terminal -y
sudo apt-get install conky -y
sudo apt-get install compton -y
sudo apt-get install rxvt-unicode -y
sudo apt-get install feh -y
sudo apt-get install neofetch -y
sudo apt-get install inxi -y
sudo apt-get install rofi -y
sudo apt-get install ranger -y
sudo apt-get install irssi -y
sudo apt-get install weechat -y
sudo apt-get install locate -y
sudo apt-get install htop -y
sudo apt-get install ncmpcpp -y
sudo apt-get install mpd -y
sudo apt-get install mpv -y
sudo apt-get install calcurse -y
sudo pip3 install pywal -y
sudo pip3 install polybar -y

# From: https://benjames.io/2017/09/03/installing-i3-gaps-on-ubuntu-16-04/

sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev xutils-dev autoconf

cd ~/tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
bash autogen.sh --prefix=/usr
make
sudo make install


mkdir ~/i3-gaps_install #change the name if you want
cd ~/i3-gaps_install
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install


cp /etc/i3/config ~/.i3/config

# Configs from my github repo

cd ~/i3-gaps_install
git clone https://github.com/MJGrey/autoi3-gaps
cd autoi3-gaps/

cp .bashrc ~/
cp .bash_profile ~/
cp .gtkrc-2.0 ~/
cp .msmtprc ~/
cp .offlineimaprc ~/
cp .Rprofile ~/
cp . tmux.conf ~/
cp .Xauthority ~/
cp .Xdefaults ~/
cp .Xrespirces ~/
cp .xinitrc ~/

cd .config/
cp -r * ~/.confg/



echo "Update & Upgrade!"

cd /etc

if [ -d /etc/pacman.d ]

then
	sudo pacman -Syu

fi

if [ -d /etc/apt ]

then
	sidp apt-get && sudo apt-get ugprade -y

fi

echo " ---------------------------------------------------------------"

echo "Kernel Version"
uname -r

echo "Distro Version"
lsb_release -a

echo "Complete System"
inxi -SPARM -GCDN -v1 -xGCRS





























echo "------------------------------------------------------------------------------------------------------"

