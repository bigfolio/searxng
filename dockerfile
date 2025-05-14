# Use the official SearXNG image
FROM searxng/searxng:latest

# Expose the correct port
EXPOSE 8080

# Command to run the app
CMD ["uwsgi", "--ini", "/etc/searxng/uwsgi.ini"]
