sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker login -u ezecuevass
cd $HOME
mkdir appHomeBanking
cd appHomeBanking/
nano index.html
nano styles.css
nano contacto.html
cd ..
nano dockerfile
history
sudo docker build -t ezecuevass/2parcial-ayso:v1.0 .
sudo docker image list
sudo docker login -u ezecuevass
sudo docker push ezecuevass/2parcial-ayso:v1.0
sudo docker run -d -p 8080:80 ezecuevass/2parcial-ayso:v1.0
sudo docker container ls
sudo ip address show
cd appHomeBanking/
