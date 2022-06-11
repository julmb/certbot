ARG tag
FROM certbot/certbot:$tag
COPY certbot-renew /etc/periodic/daily/certbot-renew
RUN chmod +x /etc/periodic/daily/certbot-renew
ENTRYPOINT []
CMD ["crond", "-f", "-d", "8"]
