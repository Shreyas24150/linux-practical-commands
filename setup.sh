mkdir /home/shreyas/cloudtools
nano /home/shreyas/cloudtools/setup.sh
sudo apt update && sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
echo "Nginx installed on $(hostname)" >> install.log
