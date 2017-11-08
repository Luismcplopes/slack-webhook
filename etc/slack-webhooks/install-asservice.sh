#!/bin/bash
#
echo "Enter your channel without the # "
read room
ROOM="$room"
echo "Enter user name o send the mesagens "
read 
USER="$user"
echo "Enter a emoji name  without the : "
read 
EMOJI="$emoji"
sed -i "s%room%$room%g" /etc/slack-webhooks/slack_start_create_EnvironmentFile.sh
sed -i "s%user%$user%g" /etc/slack-webhooks/slack_start_create_EnvironmentFile.sh
sed -i "s%emoji%$emoji%g" /etc/slack-webhooks/slack_start_create_EnvironmentFile.sh

sed -i "s%room%$room%g" /etc/slack-webhooks/slack_stop_create_EnvironmentFile.sh
sed -i "s%user%$user%g" /etc/slack-webhooks/slack_stop_create_EnvironmentFile.sh
sed -i "s%emoji%$emoji%g" /etc/slack-webhooks/slack_stop_create_EnvironmentFile.sh

# strart services

sudo systemctl daemon-reload &&
sudo systemctl enable slack-notify-start-stop.service &&
sudo systemctl start slack-notify-start-stop.service &&
read -p "Press enter to continue"
sudo systemctl status slack-notify-start-stop.service &&
read -p "Press enter to continue"
sudo systemctl is-enabled slack-notify-start-stop.service &&
read -p "Press enter to continue"
sudo systemctl restart slack-notify-start-stop.service &&
read -p "Press enter to continue"
sudo systemctl daemon-reload &&
echo "do a reboot to confirm if is working fine"



