###General###
alias cls="clear"
alias eb="exec bash"
alias ll="ls -la"

###DOCKER###
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dps='docker ps'

###GIT ALIASES###

alias gl='git log'
alias glo='git log --oneline'
alias gs='git status'
alias ga='git add .'
alias gb='git branch'
alias gbc='git branch --show-current'
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
alias gpgm='git push gh main'
alias gpgs='git push gh staging'
alias gpgp='git push gh production'

#Pull
alias gpl='git pull'
alias gpoms='git pull origin master'
alias gpom='git pull origin main'
alias gpos='git pull origin staging'
alias gpop='git pull origin production'

#Log
alias gl='git log'
alias glo='git log --oneline'

#Merge & Push
alias gds='gcs && gmm && gps'
alias gdp='gcp && gmm && gpp'

## NPM ##
alias npv='npm --version'
alias npi='npm install'
alias npu='npm update'
alias nps='npm run start'
alias npd='npm run dev'
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

#WP Cli Commands

alias wpcr='wp core update'
alias wptu='wp theme update --all'
alias wppu='wp plugin update --all --exclude=js_composer'
alias wpjsu='wp plugin install --force https://projects.bluewindlab.net/support/js_composer.zip'
alias wprf='wp rewrite flush'
alias wpca='wpcr && wptu && wppu'

#callback functions.

git_clear_cache() {

if [ -z "$1" ]; then
  echo "Provide the full path of the folder."
else 
  git rm -r --cached "$1";
fi

};

git_commit() {

if [ -z "$1" ]; then
  echo "Provide Commit Message."
else 
  git commit -m "$1";
fi

};


git_merge_branch() {

  if [ -z "$1" ]; then
    echo "Provide the branch name you want to merge."
  else
    git merge "$1";
  fi

};

git_checkout_branch() {

  if [ -z "$1" ]; then
    echo "Provide the branch name."
  else
    #branchName=$(echo "${1// /_}" | tr '[:upper:]' '[:lower:]')
    git checkout "$1";
  fi

};


git_checkout_new_branch() {

  if [ -z "$1" ]; then
    echo "Provide the new branch name."
  else
    #branchName=$(echo "${1// /_}" | tr '[:upper:]' '[:lower:]')
    git checkout -b "$1";
  fi

};
