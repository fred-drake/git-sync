FROM alpine

RUN apk --no-cache add git rsync

COPY start.sh /start.sh

CMD ["/start.sh"]
