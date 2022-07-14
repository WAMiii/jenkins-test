FROM golang:1.18-alpine

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /hello-api

EXPOSE 8081

CMD ["./hello-api"]