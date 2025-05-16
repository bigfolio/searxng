FROM searxng/searxng:latest

ENV BASE_URL=/
ENV PORT=8080
EXPOSE 8080

CMD ["uwsgi", "--ini", "/etc/searxng/uwsgi.ini"]
