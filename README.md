# dotfiles
My personal dotfiles repo 

## Prerequisites
0. Generate a new SSH key: `ssh-keygen -t ed25519 -C "foo bar"
1. Add the public key to Github: https://github.com/settings/ssh/new

## Setup
0. `cd $HOME`
1. `git clone https://github.com/akerl/....git`
2. `mkdir Projects && cd Projects`
3. `git clone git@github.com:jaredledvina/dotfiles.git`
4. `~/.../bin/... conf ~/Projects/dotfiles/.dotdotdot.conf`
5. `~/.../bin/... update`
6. `~/.../bin/... install`
7. `exit`
8. Open a new session and enjoy

## Updating
0. Edit, add, and push change
1. `dot super_update_install`
2. Open a new session and enjoy

### Local macOS 1Password Gitconfig setup:

```
❯ cat ~/.gitconfig.d/local
[user]
  signingkey = ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAAIQff+o6cS70+bpt8f2wrqmTKqojIeBEjXnL8XfJOb

[gpg]
  format = ssh

[gpg "ssh"]
  program = "/Applications/1Password.app/Contents/MacOS/op-ssh-sign"

[commit]
  gpgsign = true
```
