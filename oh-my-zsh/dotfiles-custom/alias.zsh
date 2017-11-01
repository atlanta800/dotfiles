# ls
alias ls='ls --color=auto -h --group-directories-first'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# flexget
alias "flexget-log-tail"="tail -n 300 $HOME/.flexget/flexget.log | less "
alias "flexget-sort-tv"="sudo -u debian-deluged flexget -L verbose -c $HOME/.flexget/sorting.yml -l $HOME/.flexget/flexget-sorting.log execute --task Sort_Unpacked_TV_Shows --disable-advancement"
alias "flexget-sort-premieres"="sudo -u debian-deluged flexget -L verbose -c $HOME/.flexget/sorting.yml -l $HOME/.flexget/flexget-sorting.log execute --task Sort_Unpacked_TV_Premieres --disable-advancement"
alias "flexget-sort-movies"="sudo -u debian-deluged flexget -L verbose -c $HOME/.flexget/sorting.yml -l $HOME/.flexget/flexget-sorting.log execute --task Sort_Unpacked_Movies"
alias "flexget-sort-log-tail"="tail -n 300 $HOME/.flexget/flexget-sorting.log | less "

# ack-grep
alias "ack"="ack-grep"

# git
alias gdiff='git diff --no-index'
alias gitroot='cd "$(git rev-parse --show-toplevel)"'

# awk
alias dedup="awk '!seen[$0]++'"

# plex
alias plexup="sudo sh -c \"rm -rf /tmp/pms && install -d /tmp/pms && wget --content-disposition https://plex.tv/downloads/latest/1\?channel\=8\&build\=linux-ubuntu-x86_64\&distro\=ubuntu\&X-Plex-Token\=ZYD6a4uHqssyqpUnKy8d --directory-prefix=/tmp/pms/ && find '/tmp/pms/' -type f | head -1 | xargs -I{} dpkg -i '{}' && rm -rf /tmp/pms\""
alias plexpyup="docker pull linuxserver/plexpy && if docker stop plexpy >/dev/null 2>&1; then  docker rm plexpy >/dev/null; fi && \
docker run \
  --name=plexpy -v /media/raid/plexmediaserver/plexpy:/config --restart always \
  -v \"/media/raid/plexmediaserver/Library/Application Support/Plex Media Server/Logs\":/logs:ro \
  -e PGID=115 -e PUID=110 \
  -e TZ=America/New_York \
  -p 8181:8181 \
  -d linuxserver/plexpy"

# HomeAssistant
alias certbot-renew="docker-compose -f /media/raid/home-assistant/docker-compose.yml.letsencrypt up"
