# Useful bash/zsh aliases

## How to setup bash/zsh aliases

1. Write the command for navigate to the root of your computer.

```bash
cd ~
```

2. Clone this git repository.

```bash
git clone git@github.com:xenioushk/useful_aliases.git
```

3. Now, open the .zshrc file from the root directory.

![where is the .zshrc file](previews/zshrc_file.png)

4. Add the following lines of code in to that file.

```bash
if [ -f ~/useful_aliases/aliases.zshrc ]; then
    source ~/useful_aliases/aliases.zshrc
fi
```

5. Finally, restart your terminal application or run the following command.

```bash
source ~/.zshrc
```

### Acknowledgement

1. [bluewindlab.net](https://bluewindlab.net)
