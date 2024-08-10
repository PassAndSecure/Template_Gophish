# Script de mise à jour de Gophish_fr
# Ce script fonctionne aussi pour passer de la version officelle de Gophish à la Française du dépôt
# wget 
cd /tmp 
wget https://github.com/PassAndSecure/Template_Gophish/releases/download/gophish-v0.12.1-linux-64bit-fr/gophish-v0.12.1-linux-64bit-fr.zip
mkdir -p /tmp/gophish_unpack
sudo unzip gophish-v0.12.1-linux-64bit-fr.zip -d /tmp/gophish_unpack
sudo mv /tmp/gophish_unpack /tmp/gophish
sudo rm -rf /opt/gophish/templates/*
sudo rm -rf /opt/gophish/static/*
sudo cp -r /tmp/gophish/gophish-v0.12.1-linux-64bit-fr/templates/* /opt/gophish/templates
sudo cp -r /tmp/gophish/gophish-v0.12.1-linux-64bit-fr/static/* /opt/gophish/static
sudo rm -rf gophish-v0.12.1-linux-64bit-fr.zip
sudo rm -rf gophish
