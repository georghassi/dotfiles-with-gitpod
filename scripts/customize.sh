#!/bin/bash



sudo curl -sSL https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo curl -sSL https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/yt-dlp /usr/local/bin/youtube-dl
echo "force-unsafe-io" | sudo tee /etc/dpkg/dpkg.cfg.d/02apt-speedup
DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" sudo apt-get update > /dev/null 2>&1
DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" sudo apt-get install -y rename \
    gawk rsync python3-pip git ncdu rename mkvtoolnix ffmpeg vim aria2 python3-pip \
    task-spooler mediainfo > /dev/null 2>&1
# adb android-sdk-platform-tools-common 
curl -sSL https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o /tmp/uplink_linux_amd64.zip
unzip -oq /tmp/uplink_linux_amd64.zip
sudo install /tmp/uplink /usr/local/bin
sudo install ~/get_ffmpeg_info /usr/local/bin
sudo install ~/ffmpeg_mkv_mp4 /usr/local/bin
sudo install ~/gdrive /usr/local/bin
