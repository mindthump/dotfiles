## Instructions 

```
pushd ~
mkdir -p .vim_old
mv .vim .vim_old
mv .vimrc .vim_old
mv .gvimrc .vim_old
mv .tmux.conf .vim_old
git clone https://github.com/mindthump/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
ln -s ~/.vim/tmux.conf ~/.gvimrc
pushd ~/.vim
git submodule update --init
git submodule foreach git pull origin master
popd
popd
```
