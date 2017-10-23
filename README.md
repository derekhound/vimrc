# Derek's vimrc


## Quick Start

### Auto Install Config Files

Simply run this script to install and configure this vimrc in your $HOME dir

	curl -o - https://raw.githubusercontent.com/derekhound/vimrc/master/install.sh | sh

### Manual Install Config Files

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


## [Plug](https://github.com/junegunn/vim-plug)

A minimalist Vim plugin manager.

| Command                               | Description                                                       |
| ------------------------------------  | ----------------------------------------------------------------- |
| PlugInstall [name ...] [#threads]`    | Install plugins                                                   |
| PlugUpdate [name ...] [#threads]`     | Install or update plugins                                         |
| PlugClean[!]`                         | Remove unused directories (bang version will clean without prompt}|
| PlugUpgrade`                          | Upgrade vim-plug itself                                           |
| PlugStatus`                           | Check the status of plugins                                       |
| PlugDiff`                             | Examine changes from the previous update and the pending changes  |
| PlugSnapshot[!] [output path]`        | Generate script for restoring the current snapshot of the plugins |


## [GitGutter](https://github.com/airblade/vim-gitgutter)

A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed. You can also stage and undo individual hunks.

| Command                               | Description                                                       |
| ------------------------------------- | ----------------------------------------------------------------- |
| GitGutterToggle                       | You can explicitly turn vim-gitgutter off and on                  |

| Key Bindding                          | Description                                                       |
| ------------------------------------- | ----------------------------------------------------------------- |
| ] + c (change)                        | Jump to next hunk (change)                                        |
| [ + c (change)                        | Jump to previous hunk (change)                                    |

## [CtrlP](https://github.com/kien/ctrlp.vim)

Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

### Invoke CtrlP

| Command                               | Description                                                       |
| ------------------------------------- | ----------------------------------------------------------------- |
| CtrlP                                 | Invoke CtrlP in find file mode                                    |
| CtrlPBuffer                           | Invoke CtrlP in find buffer                                       |
| CtrlPMRU                              | Invoke CtrlP in find MRU file mode                                |

### Once CtrlP is open

| Key Bindding                          | Description                                                       |
| ------------------------------------- | ----------------------------------------------------------------- |
| Ctrl + f (forward)                    | Scroll to the next' search mode in the sequence                   |
| Ctrl + b (backward)                   | Scroll to the 'previous' search mode in the sequence              |
| Ctrl + d                              | Toggle between full-path search and filename only search          |
| Ctrl + r                              | Toggle between the string mode and full regexp mode               |
| Ctrl + t                              | Open the selected file in a new 'tab'.                            |
| Ctrl + v                              | Open the selected file in a 'vertical' split.                     |
| Ctrl + x, Ctrl + s, Ctrl + CR         | Open the selected file in a 'horizontal' split.                   |
| Ctrl + z                              | Mark/unmark multiple files and <c-o> to open them.                |


## EasyMotion

| Key Bindding                          | Description                                                       |
| ------------------------------------- | ----------------------------------------------------------------- |
| <Leader> + <Leader> + w               | Beginning of word forward                                         |
| <Leader> + <Leader> + b               | Beginning of word backward                                        |

## Tagbar


## NerdTree


## NerdCommenter


## Fugitive


## Airline


## Syntastic


