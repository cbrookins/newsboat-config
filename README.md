# My newsboat config

My newsboat config/urls along with an Ansible script to prep a raspberry pi and screen as a display for my infosec feed.

-------

Ubuntu and Elementary do not come with curl pre-installed so the following will take care of that.
```
sudo apt update -y && sudo apt install curl -y
```
Bootstrap
```
curl https://raw.githubusercontent.com/theRealc2c2/newsboat-config/main/bootstrap.sh | sh