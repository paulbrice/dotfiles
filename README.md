# OSX Setup

## Software

- xcode command line tools
- oh-my-zsh
- brew
- asdf

---

Review `config/Brewfile` for home brew installs.

Review `bootstrap.sh` for asdf managed software.

---

## Prep

Ensure `.ssh` folder exists in root of user profile and contains valid ssh key for github dotfiles repo.

## Run

```bash
mkdir projects && cd projects
git clone git@github.com:paulbrice/dotfiles.git
cd dotfiles
./bootstrap.sh
```

---

This can be run repeatedly, to update the system post install.

If your running additional times, `oh-my-zsh` will ask is you wish to replace files, just respond `y` and it will continue.

## Post Run

- review .mrconfig in user profile for git repos you wish to manage
- execute mr update in profile root to pull repos
- add any additional shell env vars like secret keys etc. place in ~/.zprofile post install.
