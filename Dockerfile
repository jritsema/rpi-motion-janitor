FROM hypriot/rpi-alpine-scratch

RUN apk update && \
  apk upgrade && \
  apk add bash && \
  rm -rf /var/cache/apk/*

# add crontab schedule and script and make it executable
ADD ./crontab /etc/crontabs/root
ADD ./cleanup.sh /etc/crontabs/
RUN chmod +x /etc/crontabs/cleanup.sh

CMD ["crond", "-f", "-d", "8"]
