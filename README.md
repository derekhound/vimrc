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


## General


## Plug

| Command                               | Description                                                       |
| ------------------------------------  | ----------------------------------------------------------------- |
| PlugInstall [name ...] [#threads]`    | Install plugins                                                   |
| PlugUpdate [name ...] [#threads]`     | Install or update plugins                                         |
| PlugClean[!]`                         | Remove unused directories (bang version will clean without prompt}|
| PlugUpgrade`                          | Upgrade vim-plug itself                                           |
| PlugStatus`                           | Check the status of plugins                                       |
| PlugDiff`                             | Examine changes from the previous update and the pending changes  |
| PlugSnapshot[!] [output path]`        | Generate script for restoring the current snapshot of the plugins |


## GitGutter


## CtrlP

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
| Ctrl + x \| Ctrl + s \| Ctrl + CR     | Open the selected file in a 'horizontal' split.                   |
| Ctrl + z                              | Mark/unmark multiple files and <c-o> to open them.                |


## EasyMotion


## Tagbar


## NerdTree


## NerdCommenter


## Fugitive


## Airline


## Syntastic


