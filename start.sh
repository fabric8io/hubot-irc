function gclonecd(){
  # clone repo and cd to git repo but removing the '.git' from the directory name
  dirname=$(basename $1)
  len=${#dirname}-4
  git clone $1 && cd $(echo "${dirname:0:$len}")
}

gclonecd $HUBOT_SCRIPTS_URI

# Move coffeescripts to Hubot scripts folder so they are installed at startup
mv *.coffee /home/hubot/scripts/

/home/hubot/bin/hubot --adapter irc