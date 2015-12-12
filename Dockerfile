
FROM gliderlabs/alpine:3.2
MAINTAINER jtblin@gmail.com

RUN echo "*/5 *	* * *	/bin/docker-gc" >> /etc/crontabs/root
ADD docker-gc /bin/docker-gc

CMD ["crond", "-f"]