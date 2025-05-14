FROM docker.io/searxng/searxng:latest

ENV PORT=10000

EXPOSE 10000

CMD ["uwsgi", "--http", ":10000", "--ini", "/etc/searxng/uwsgi.ini"]
