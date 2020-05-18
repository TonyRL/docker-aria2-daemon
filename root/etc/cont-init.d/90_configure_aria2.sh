#!/usr/bin/with-contenv bash

mkdir -p /config
mkdir -p /conf
mkdir -p /download

cp -n /app/start.sh /config/start.sh
cp -n /app/aria2.conf /config/aria2.conf
cp -n /app/aria2_ext.conf /conf/aria2_ext.conf
cp -n /app/on-bt-download-complete.sh /conf/on-bt-download-complete.sh
cp -n /app/on-download-complete.sh /conf/on-download-complete.sh
cp -n /app/on-download-error.sh /conf/on-download-error.sh
cp -n /app/on-download-pause.sh /conf/on-download-pause.sh
cp -n /app/on-download-start.sh /conf/on-download-start.sh
cp -n /app/on-download-stop.sh /conf/on-download-stop.sh

cp -n /app/aria2rpc.ruby /config/aria2rpc.ruby
cp -n /app/rss_download.sh /config/rss_download.sh
cp -n /app/rss_feeds.txt /conf/rss_feeds.txt

cat /conf/aria2_ext.conf >> /config/aria2.conf

if [ ! -f /conf/aria2.session ]; then
	touch /conf/aria2.session
fi

chmod +x /config/start.sh
chmod +x /conf/on-bt-download-complete.sh
chmod +x /conf/on-download-complete.sh
chmod +x /conf/on-download-error.sh
chmod +x /conf/on-download-pause.sh
chmod +x /conf/on-download-start.sh
chmod +x /conf/on-download-stop.sh

chmod +x /config/aria2rpc.ruby
chmod +x /config/rss_download.sh
chmod +x /config/rss_download_wget.sh

chown -R abc:abc /download
chown -R abc:abc /config
chown -R abc:abc /conf

#cat /config/aria2.conf

