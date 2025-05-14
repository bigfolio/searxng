FROM docker.io/searxng/searxng:latest

EXPOSE 8080

CMD ["uwsgi", "--ini", "/etc/searxng/uwsgi.ini"]
