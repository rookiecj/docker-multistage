# build stage
# go 1.17
FROM golang:1.17-alpine3.13 AS builder 
WORKDIR /app
COPY . .
RUN go build -o hello hello.go 



## run stage
FROM alpine:3.13
WORKDIR /app 
# copy only hello binary from build stage
COPY --from=builder /app/hello .

# EXPOSE 8081 
CMD ["/app/hello"]
