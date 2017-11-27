# Slack-Webhooks
This package leet you send messages in to a Slack Channel and can be activated as a service for when server with Ubuntu was turned off or on we received a notification on the slack channel  


![https://github.com/Luismcplopes/slack-webhook/blob/master/custom-emojis/slackmessage.jpg](https://github.com/Luismcplopes/slack-webhook/blob/master/custom-emojis/slackmessage.jpg)

## To create you will need
* Ubuntu 16.04
* Slack Webhook Url
* Channel name (without #)
* Emoji name (smiley without :)



## Create a debian package
* Build 
  * `sudo ./build.sh`
* Install
  * `sudo dpkg -i slack-webhooks_0.8-amd64.deb`
* Test
  * `slack-webhook -r "my_room" -m "test me"`
* Install as a service
  * `sudo bash /etc/slack-webhooks/install-asservice.sh`
* Test the service
  *  `sudo systemctl restart slack-notify-start-stop.service` 
* Uninstall
  * `sudo dpkg --remove slack-webhooks`

## Note about emojis

This example uses the emoji :ubuntu: to display the emoji as a user icon.
The :ubuntu: emoji does not exist in grab the image from this folder [custom emojis](/custom-emojis)

If you are not familiar with how to do this here is a slack how-to article 
https://get.slack.help/hc/en-us/articles/206870177-Create-custom-emoji


