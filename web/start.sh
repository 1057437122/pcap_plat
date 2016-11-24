service cron start
apache2ctl -D FORGROUND
tail -f /var/log/apache2/access.log
