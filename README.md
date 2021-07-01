# Dotfiles

## Installation

### Clone repository

```shell
git clone https://github.com/sergiivelykodnyi/dotfiles.git
```

```shell
cd dotfiles
```

### Run scripts

#### 1. Install zsh configs and packages

```shell
sh install-zsh.sh
```

If you get following error: `zsh compinit: insecure directories`. Run following commands:

```shell
sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
```

```shell
chmod u+w /usr/local/share/zsh /usr/local/share/zsh/site-functions
```

Open new terminal window with zsh shell and run following command for installing fonts and configuring prompt view:

```shell
p10k configure
```

For Visual Studio Code: Open File → Preferences → Settings, enter `terminal.integrated.fontFamily` in the search box and set the value to `MesloLGS NF`.

#### 2. Install zsh configs and packages

You have to run previews step before.

```shell
sh install-other.sh
```

## License

The code is available under the [MIT license](LICENSE).
