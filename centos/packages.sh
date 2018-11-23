# yarn & nodejs
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
# docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
# go
sudo yum install go
# fzf
go get -u github.com/junegunn/fzf
