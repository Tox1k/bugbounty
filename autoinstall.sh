#!/bin/bash
sudo apt install -y golang-go git
go get -u github.com/tomnomnom/meg
go get -u github.com/tomnomnom/waybackurls

go get -u github.com/tomnomnom/gf
#gf stuff

git clone https://github.com/tomnomnom/gf
echo 'source /home/panda/go/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
mkdir /home/panda/go/src
mkdir /home/panda/go/src/github.com
mkdir /home/panda/go/src/github.com/tomnomnom
mv gf/ /home/panda/go/src/github.com/tomnomnom/
mkdir ~/.gf
cp -r /home/panda/go/src/github.com/tomnomnom/gf/examples/* ~/.gf


go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/anew
go get -u github.com/tomnomnom/gron
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/qsreplace

go get -u github.com/tomnomnom/fff
#tune fff
ulimit -n 16384

go get -u github.com/tomnomnom/unfurl


echo '# Personal binaries' >> ~/.bashrc
echo 'export PATH=${PATH}:~/bin:~/.local/bin:~/.opt/scripts' >> ~/.bashrc

echo '# Id quite like for Go to work please.' >> ~/.bashrc
echo 'export PATH=${PATH}:/home/panda/go/bin' >> ~/.bashrc
#'export GOPATH=~' >> ~/.bashrc
mkdir ~/.opt
mkdir ~/.opt/scripts
cp -r scripts/* ~/.opt/scripts
echo "[*]DONE![*]"
