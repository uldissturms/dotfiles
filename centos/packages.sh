# yarn & nodejs
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
# docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
# go
sudo yum install go -y
# fzf
go get -u github.com/junegunn/fzf
# git
sudo yum install git-gui -y
# rust
curl https://sh.rustup.rs -sSf | sh
# ag
sudo yum install the_silver_searcher -y
sudo yum install libevent-devel ncurses-devel glibc-static -y
