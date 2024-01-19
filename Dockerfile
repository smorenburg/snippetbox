FROM golang:1.21.6-alpine as builder

WORKDIR /
COPY . .

RUN go get -d -v -t ./cmd/web
RUN go build -v -o snippetbox ./cmd/web
RUN chmod +x snippetbox

FROM alpine:latest

WORKDIR /
COPY --from=builder /ui /ui
COPY --from=builder /snippetbox .

EXPOSE 4000
ENTRYPOINT ["/snippetbox"]
