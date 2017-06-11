FROM nikitab/zbrowse

RUN apt-get update && apt-get install -y tcpdump && rm -rf /var/lib/apt-lists/*

RUN mkdir /data


COPY zdump.sh /

RUN chmod +x /zdump.sh

ENTRYPOINT ["/zdump.sh"]
