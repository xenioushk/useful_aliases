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

## zsh aliases examples

```bash
###General###
alias cls="clear"
alias eb="exec bash"
alias ll="ls -la"

###DOCKER###
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dps='docker ps'

###GIT ALIASES###

alias gl='git log'
alias glo='git log --oneline'
alias gs='git status'
alias ga='git add .'
alias gb='git branch'
alias gv='git --version'
alias grv='git remote -v'

#Clear gitignore cache.

alias gcc="git_clear_cache"

#Commit

alias gac='ga && gc'
alias gc='git_commit'

#Checkout

alias gcb='git_checkout_branch'
alias gcnb='git_checkout_new_branch'
alias gcs='git checkout staging'
alias gcm='git checkout main'
alias gcp='git checkout production'

#Merge

alias gmm='git merge main'
alias gms='git merge staging'
alias gmp='git merge production'
alias gmb='git_merge_branch'

#Push

alias gpm='git push origin main'
alias gps='git push origin staging'
alias gpp='git push origin production'

#Pull

alias gpom='git pull origin main'
alias gpos='git pull origin staging'
alias gpop='git pull origin production'

#Merge & Push
alias gds='gcs && gmm && gps'
alias gdp='gcp && gmm && gpp'

## NPM ##
alias npv='npm --version'
alias npi='npm install'
alias npu='npm update'
alias nps='npm run start'
alias npb='npm run build'
alias npw='npm run watch'
alias npf='npm run format'
alias nplc='npm run lint:css'
alias nplj='npm run lint:js'
alias nplp='npm run lint:php'

## Composer ##

alias cpi='composer install'
alias cpu='composer update'
alias cpd='composer dumpautoload'
alias cpb='composer dumpautoload -o' #Composer Build.

#Gutenberg

alias npf='npm run format'
alias nplc='npm run lint:css'
alias nplj='npm run lint:js'
```

### Acknowledgement

1. [bluewindlab.net](https://bluewindlab.net)
