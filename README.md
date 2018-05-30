# Sergii Velykodnyi's Dotfiles

## Install

In the beginning, you need to check installation the git, zsh in your system.
  * For check zsh see this doc [Installing-ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
  * For check git run this `git --version` if you don't see message like this `git version 2.17.0` you need to install git. For masOS you can run `brew install git`, for Ubuntu `sudo apt install git`.

### Clone repository

```bash
$ git clone https://github.com/sergiivelykodnyi/dotfiles.git
$ cd dotfiles
```

### Install zsh/bash config
if
```bash
$ sh install.sh
```

### Add user data for Git

Open the file `~/.gituser` and add your data:
```
[user]
  name = enter your name
  email = enter your email
```

### .extra

This file you can use for add custom commands which you don’t want to commit to a public repository.

## Updating zsh plugins
Just run in a terminal:
```
$ antigen update && antigen cache-gen
```


## Thank you for resources
* [Github dotfiles](https://dotfiles.github.io/)
* [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
* [Managing Your Dotfiles](http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)

## License

The code is available under the [MIT license](LICENSE).
