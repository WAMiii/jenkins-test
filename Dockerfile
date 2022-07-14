FROM golang:1.18-alpine

WORKDIR /app

COPY . .

ENV GOOS=linux GOARCH=amd64 CGO_ENABLE=0

RUN go mod download

RUN go build -o hello-api

FROM alpine

WORKDIR /root

COPY --from=0 /app/hello-api ./

COPY  /conf ./conf

EXPOSE 8081

CMD ["./hello-api"]