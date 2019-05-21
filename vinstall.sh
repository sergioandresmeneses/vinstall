#/bin/bash
# $1 git URL, $2 plugin-name
# path ~/.vim/pack/myplugins/start/

git clone $1.git
cd $1

git submodule init
git submodule add $1 vim/pack/shapeshed/start/$2
git add .gitmodules vim/pack/shapeshed/start/$2
git commit