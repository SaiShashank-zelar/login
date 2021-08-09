FROM        golang:alpine
RUN         mkdir -p /go
WORKDIR     /go/login
COPY        / .
RUN         go mod init example.com/login
RUN         go get
RUN         go build
ENV         AUTH_API_PORT=8080
CMD         ["login"]






