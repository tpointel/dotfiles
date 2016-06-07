sudo apt-get install vim \
    htop \
    git \
    docker \
    docker-compose \
    composer;

currentPath=$(pwd)

echo $currentPath

rm ~/.bashrc
file="$currentPath/.bashrc"
ln -s $file ~/.bashrc

rm ~/.vimrc
file="$currentPath/.vimrc"
ln -s "$currentpath/.vimrc" ~/.vimrc

git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt

echo "==========================="
echo "= Git configurations ======"
echo "==========================="
echo "Your name : "
read gitName
echo "Your email : "
read gitEmail

git config --global user.name "$gitName"
git config --global user.email $gitEmail
git config --global core.editor vim
git config --global merge.tool vimdiff

