FROM golang:latest
ADD . /cdn
WORKDIR /cdn
RUN go mod download
RUN go build cdn.go
EXPOSE 5002
CMD ["./cdn"]