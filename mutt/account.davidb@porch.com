#-*- mode: conf -*- 
# IMAP config

source ~/.mutt/user
              
set imap_user="$my_username@$my_domain"
set imap_pass=$my_password

set folder="imaps://outlook.office365.com/"
set spoolfile= +INBOX
set postponed= +$my_drafts_noquote
set record = +$my_sent_noquote
set trash = +$my_trash_noquote
mailboxes

set imap_check_subscribed="yes"
set imap_list_subscribed="yes"
set timeout=15
set mail_check=90
set imap_keepalive=180
set imap_idle
unset mark_old
set ssl_use_sslv3=yes

# SMTP config
set realname = $my_realname
set from = "$my_username@$my_domain"
set smtp_pass = $my_password
set hostname = $my_domain
set smtp_url = "smtp://$my_username@$my_domain@outlook.office365.com:587/"
set ssl_force_tls = yes
set smtp_authenticators = "login"