FROM        golang:alpine
RUN         mkdir -p /go
WORKDIR     /go/login
COPY        / .
RUN         apt install go-dep
RUN         go get
RUN         go build
COPY        login.service /etc/systemd/system/
CMD         ["login"]



