# Dotfiles

## Installation

### Clone repository

```bash
$ git clone https://github.com/sergiivelykodnyi/dotfiles.git
$ cd dotfiles
```

### Run scripts

#### 1. Install zsh configs and packages

```shell
$ sh install-zsh.sh
# zsh compinit: insecure directories
$ sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
$ chmod u+w /usr/local/share/zsh /usr/local/share/zsh/site-functions
```

Open new terminal window with zsh shell and run

```shell
$ p10k configure
```

for installing fonts and configuring prompt view.

For Visual Studio Code: Open File → Preferences → Settings, enter `terminal.integrated.fontFamily` in the search box and set the value to `MesloLGS NF`.

#### 2. Install zsh configs and packages

You have to run previews step before.

```shell
$ sh install-other.sh
```

## License

The code is available under the [MIT license](LICENSE).
