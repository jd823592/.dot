source "GPG_TTY=`tty` gpg -dq ~/.mutt/gmail.com.pwds.gpg |"

set hostname="gmail.com"
set imap_user="jakub.daniel@gmail.com"
set imap_pass=$my_imap_pass
set folder="imaps://jakub.daniel@imap.gmail.com:993"
set spoolfile="imaps://jakub.daniel@imap.gmail.com:993"
set record="imaps://jakub.daniel@imap.gmail.com:993/Sent"
set postponed="imaps://jakub.daniel@imap.gmail.com:993/Drafts"

mailboxes "="

set realname="Jakub Daniel"
set from="jakub.daniel@gmail.com"
set smtp_pass=$my_smtp_pass
set smtp_url="smtp://jakub.daniel@smtp.gmail.com:587"

set pgp_sign_as="jakub.daniel@gmail.com"

set alias_file="~/.mutt/gmail.com.aliases"
set sort_alias=alias
source $alias_file
