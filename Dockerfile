
FROM golang:1.16-alpine

WORKDIR /app

# COPY go.mod ./
# COPY go.sum ./

COPY . ./

RUN go mod download

RUN go build ./cmd/web

EXPOSE 8080

CMD [ "./web" ]
