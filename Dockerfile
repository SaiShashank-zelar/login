FROM        golang:alpine
RUN         mkdir -p /go
WORKDIR     /go/login
COPY        / .
RUN         go mod init example.com/login
RUN         go get
RUN         go build
EXPOSE      8080
CMD         ["login"]






