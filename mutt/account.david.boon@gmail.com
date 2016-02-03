set imap_user = 'david.boon@gmail.com'
set imap_pass = 'UKRT2rNAHqc9Wp'

set smtp_url = "smtp://david.boon@smtp.gmail.com:587/"
set smtp_pass = 'UKRT2rNAHqc9Wp'

set realname = 'David Boon'
set hostname = 'gmail.com'
set ssl_starttls = yes
set ssl_force_tls = yes

set spoolfile = imaps://imap.gmail.com:993/INBOX
set folder = imaps://imap.gmail.com:993

set record="+[Gmail]/Sent Mail"
set postponed="+[Gmail]/Drafts"
