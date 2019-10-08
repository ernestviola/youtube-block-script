# Script to be more productive
Is used with crontab and launchd in order to schedule a productive period by blocking YouTube.

## Make Productive usable
cp productive.sh productive
chmod a+x productive
mv productive /usr/local/bin

## In Terminal
use sudo crontab -e

## Launchd
sudo cp com.ernestscripts.productive.plist /Library/LaunchDaemons/com.ernestscripts.productive.plist
sudo launchctl load /Library/LaunchDaemons/com.ernestscripts.productive.plist
### To start without login
launchctl start com.ernestscripts.productive.plist

### To Unload
launchctl unload ~/Library/LaunchAgents/com.ernestscripts.productive.plist

## Crontab example
```
1 18 * * * /usr/local/bin/productive >/tmp/stdout.log 2>/tmp/stderr.log
1 22 * * * /usr/local/bin/productive >/tmp/stdout.log 2>/tmp/stderr.log
```
