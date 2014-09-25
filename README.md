## Instructions 

```
cd ~
mv .vim .vim_old
mv .vimrc .vim_old
mv .gvimrc .vim_old
git clone https://github.com/ecardinal/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule update --init
git submodule foreach git pull origin master
cd ~
```
