# Snippetbox

https://hub.docker.com/repository/docker/smorenburg/snippetbox

```bash
docker build --platform linux/amd64 -t smorenburg/snippetbox:latest -t smorenburg/snippetbox:0.0.6 .
docker push smorenburg/snippetbox --all-tags
```

```bash
go run ./cmd/web -addr="127.0.0.1:4000" -dsn="root@tcp(localhost)/snippetbox?parseTime=true&tls=preferred&multiStatements=true" 
```
