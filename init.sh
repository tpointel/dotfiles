sudo apt-get install vim \
    htop \
    git;

currentPath=$(pwd)

rm ~/.bashrc
ln -s $currentpath/.bashrc ~/.bashrc

rm ~/.vimrc
ln -s $currentpath/.vimrc ~/.vimrc

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

