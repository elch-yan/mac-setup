# mac-setup
Mac setup instructions, shell scripts, config files

## Process

1. Install brew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install git

```sh
brew install git
```

3. Configure git

Create `~/.gitconfig` file with `git-configs/global` contents

Create `~/Documents/personal/.gitconfig` file with `git-configs/personal` contents

4. Clone repository

```sh
cd ~/Documents/personal

git clone https://github.com/elch-yan/mac-setup.git

cd ./mac-setup
``` 

5. Make start.sh executable

```sh
chmod +x start.sh
```

5. Run start.sh

```sh
./start.shell
```