FROM python:3-alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8000

CMD ["python3", "-m", "http.server", "8000", "--directory", "/usr/share/nginx/html"]



