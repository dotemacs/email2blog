
Blog via email
==============

Add this to your .procmailrc:

    PATH=/usr/bin:/usr/local/bin
    MAILDIR=$HOME/Mail
    DEFAULT=$HOME/Mail/inbox
    LOGFILE=/dev/null
    SHELL=/bin/sh
     
    # Blog
    :0:
    * ^Subject:\ blog
    {
      :0
      | $HOME/bin/email2blog.rb
    }
    
    
Now send an email to the desired email and go nuts.

