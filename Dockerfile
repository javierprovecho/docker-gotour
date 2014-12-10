FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install mercurial golang git
RUN mkdir ~/gocode
RUN GOPATH=~/gocode go get code.google.com/p/go-tour/gotour
EXPOSE 80
ENTRYPOINT GOPATH=~/gocode GOROOT=/usr/bin/go .~/gotour -http="0.0.0.0:80"
