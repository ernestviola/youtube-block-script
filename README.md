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
launchctl load /Library/LaunchDaemons/com.ernestscripts.productive.plist

### To Unload
launchctl unload ~/Library/LaunchAgents/com.ernestscripts.productive.plist

## Crontab example
0 16 * * * unproductive

0 18 * * * productive