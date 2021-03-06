## OSのバージョンを確認する
```
cat /etc/redhat-release
```

## Create Symbolic Link
settings_centosディレクトリに移動して以下を実行する。

```
PWD_DIR=`pwd`
ln -sf ${PWD_DIR}/.bash_profile ~/.bash_profile
ln -sf ${PWD_DIR}/.vimrc ~/.vimrc
ln -sf ${PWD_DIR}/.pryrc ~/.pryrc
```
シンボリックリンクを上書きしたい場合は`ln -nsf`にして実行。

## Install List
```
sudo yum install tree
sudo yum install -y source-hightlight # lessに色をつける
```

## Install Ruby using RVM
```
TBC
```

## Install rbenv & ruby-build
```
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

## Install Ruby using rbenv
```
sudo yum -y install bzip2 gcc openssl-devel readline-devel zlib-devel
rbenv install --list #インストールできるRubyのバージョンを確認
rbenv install 2.5.0
rbenv global 2.5.0
```

## Install Docker
[Docker CentOS](https://docs.docker.com/install/linux/docker-ce/centos/)

```
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce
sudo systemctl start docker
```

### sudoなしでdockerを実行したい場合
```
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo service docker restart
```

## user追加
```
sudo useradd <USERNAME>
sudo passwd <USERNAME>
sudo usermod -aG wheel <USERNAME>
```
