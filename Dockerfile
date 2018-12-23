FROM golang:alpine AS builder
ADD . /workspace
WORKDIR /workspace
RUN CGO_ENABLED=0 GOOS=linux GOARCH=arm go build -a -installsuffix cgo -o main main.go

FROM scratch
COPY --from=builder /workspace/main /main
EXPOSE 9090
CMD ["/main"]
