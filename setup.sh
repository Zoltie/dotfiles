dotFiles=(bash_profile emacs)

echo "create folder if it doesn't exist"
mkdir $HOME/dotfiles_old 2> /dev/null

for file in ${dotFiles[@]}
do
	echo "backing up old files"
	mv $HOME/.$file $HOME/dotfiles_old 2> /dev/null
	echo "creating links for " $file
	ln -s $HOME/dotfiles/$file $HOME/.$file
done
