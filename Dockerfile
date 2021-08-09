FROM        golang:alpine
RUN         mkdir -p /go
WORKDIR     /go/login
COPY        / .
RUN         go mod init example.com/login
RUN         go get
RUN         go build
COPY        logins.service  /etc/systemd/system/logins.service
CMD         ["service logins start"]






