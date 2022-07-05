
## volume local (type: bind)
```
docker run --name apache -d -p 8000:80 -v "$PWD/htdocs":/usr/local/apache2/htdocs httpd:2.4-alpine
```

## volume nommé (type: volume)
```
docker volume create demo
docker run --name apache -d -p 8000:80 -v demo:/usr/local/apache2/htdocs httpd:2.4-alpine
```