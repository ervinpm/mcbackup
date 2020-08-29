# Minecraft Backup Script
This script saves world map of a minecraft server running on linux screen.

## CRON Job
Add cron job comamnd
```bash
$ crontab -e
```

Add the following lines to do backups every 1:07 in the morning
```
7 1 * * * ~./mcbackup
```

