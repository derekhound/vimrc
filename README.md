# Derek's Vim Configuration


## Quick Start

### Install Vim Configuration Files

Run these commands to get this Vim configuration working on Linux machine. You can run git pull inside of ~/.vim if you'd ever like to grab the latest version.

	git clone https://github.com/derekhound/vimrc.git ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

### Install Vim Plugins

#### Install

Open Vim first and then run this command to install plugins.

	:PlugInstall


#### Update

Open Vim first and then run this command to update plugins.

	:PlugUpdate


## Usage ##


### General


### Plug

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unused directories (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |


### GitGutter


### CtrlP


### EasyMotion


### Tagbar


### NerdTree


### NerdCommenter


### Fugitive


### Airline


### Syntastic
