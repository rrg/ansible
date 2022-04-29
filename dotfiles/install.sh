#!/usr/bin/env zsh

dotfiles_path=$HOME/ansible/dotfiles # todo pass path
target_dir=$HOME

# Check if the param passed is correct
if [[ $(dirname "$0") -ef $dotfiles_path ]]
then
   echo "dotfiles_path Looks Good"
else
   echo "dotfiles_path seems incorrect, abort!!"
   echo $dotfiles_path
   exit 1
fi

# GOTO Dotfiles path to run stow
pushd $dotfiles_path


# Some of these files may already exist, in that case
# manually delete the hard files
# rm ~/.zshrc
# rm ~/.config/nvim/init.vim




# dotfile configs
vector=(
	zsh 
	nvim 
	# sublime
)

for folder in $vector
do
	stow -D $folder --target=$target_dir
	stow $folder --target=$target_dir
done





# Done go back to wherever you came from
popd
