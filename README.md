# Script to be more productive
Is used with crontab in order to schedule a productive period by blocking YouTube.

## Make Productive usable
cp productive.sh productive
chmod a+x productive
mv productive /usr/local/bin

## In Terminal
use sudo crontab -e

## Crontab example
0 16 * * * unproductive

0 18 * * * productive
