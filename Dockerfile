FROM        golang:alpine
RUN         mkdir -p /go
WORKDIR     /go/login
COPY        / .
RUN         go mod init example.com/login
RUN         go get
RUN         go build
COPY        login.service /etc/systemd/system/login.service
CMD         ["login"]



