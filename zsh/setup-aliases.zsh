

alias ll='ls -lhF'

alias ssh-tunnel-mongo-prod='pkill -f "ssh.*-f .*uat.matrixinsights.com:27017 -N"; ssh -f -i ~/.ec2/mtrx.pem ec2-user@db1.uat.matrixinsights.com -L 2000:db1.uat.matrixinsights.com:27017 -N'
alias ssh-tunnel-mongo-dev='pkill -f "ssh.*-f .*dev.matrixinsights.com:27017 -N"; ssh -f -i ~/.ec2/mtrx.pem ec2-user@db1.dev.matrixinsights.com -L 4000:db1.dev.matrixinsights.com:27017 -N'

alias ssh-tunnel-irc='ssh -f -i ~/.ec2/mtrx.pem ec2-user@ec2-54-243-230-183.compute-1.amazonaws.com -L 6667:ec2-54-243-230-183.compute-1.amazonaws.com:6667 -N'
alias ssh-kill-all-tunnels="ps axwww | grep '\<ssh\> -f' | cut -d ' ' -f1  | xargs kill"



#remove the alias that git makes for git merge, instead I use graphicsmagic from the command line a lot.
#unalias gm



#
# allow resumable scp
# example: 
#    rsync --partial --progress --rsh=ssh dboon@bp-fb-java.stage.kixeye.com:jwms_world2.sql ~/Projects/kixeye/jwms_world2.sql
#    scp-resume dboon@bp-fb-java.stage.kixeye.com:jwms_world2.sql ~/Projects/kixeye/jwms_world2.sql
alias scpresume="rsync --partial --progress --rsh=ssh"

alias nuke-backups='find . -name "*.~*~"  -exec rm {} \;'


alias git-incoming='git fetch && git --no-pager log HEAD..origin'
alias glg='git --no-pager log --stat --max-count=5'

#alias node='env NODE_NO_READLINE=1 rlwrap -p Green -S "> " node'


alias dh='dirs -v'



alias print-colors='for i in {0..255} ; do printf "\x1b[38;5;${i}mcolour${i}\n"; done'

alias copy-ip-address='ifconfig en0 | awk ''/inet.*[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/ { print $2; }'' | tr -d ''\n'' | pbcopy'

#make password 32 chars long, only one of them
alias mkpasswd='pwgen -s -n -c -A -1 8 1'
