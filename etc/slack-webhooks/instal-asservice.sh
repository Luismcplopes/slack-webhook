#!/bin/bash
#
sudo cp slack-notify-start-stop.service /lib/systemd/system/slack-notify-start-stop.service
sudo cp slack-notify-start-stop.service /etc/systemd/system/slack-notify-start-stop.service
sudo systemctl enable slack-notify-start-stop.service
sudo systemctl status slack-notify-start-stop.service
sudo systemctl is-enabled slack-notify-start-stop.service
sudo systemctl start slack-notify-start-stop.service
sudo systemctl restart slack-notify-start-stop.service
sudo systemctl daemon-reload
sudo restart