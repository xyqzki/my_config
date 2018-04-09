# my_config

my configuration file for development

env is a file should be saved as .env file under the base direcory

before using the .env file, you should install the autoenv package


env: centos or mac osx

# install anaconda
linux
* https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
mac
* https://repo.continuum.io/archive/Anaconda3-5.1.0-MacOSX-x86_64.pkg

# steps for setting up vimrc and tmux.conf

* git clone https://github.com/xyqzki/my_config
* cp tmux.conf ~/.tmux.conf
	* tmux source-file ~/.tmux.conf
 	* don't source ~/.tmux.conf
* copy vimrc ~/.vimrc
* install vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
* then open vim, type :PluginInstall

* install auto-complete plugin YouCompleteMe
	* bug1：need vim version 7.4 above
   ref to http://blog.csdn.net/xyqzki/article/details/79130615, upgrade vim to version 8
	* bug2: the ycmd server SHUT DOWN (restart with ':...low the instructions in the documentation.
   ref to http://blog.csdn.net/xyqzki/article/details/79130615, install C-lang

   error message：the ycmd server SHUT DOWN (restart with ‘:…low the instructions in the documentation.

```
sudo yum install cmake -y
cd ~/.vim/vundle/plugin/YouCompleteMe  or [.vim/bundle/plugin/YouCompleteMe] 
./install.py --clang-completer
```

	when install Clang, we have error message:  CMake Error: your CXX compiler: "CMAKE_CXX_COMPILER-NOTFOUND" was not found
	need to install g++, use sudo yum install gcc-c++
ref:
http://blog.csdn.net/netdalanhan/article/details/44600643

* color scheme we need solarized

# putty setup (option)

	* color scheme choose ascii blue, then RGB is set to 85 85 255
	* font size is set to 16-20
