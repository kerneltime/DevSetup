FROM ubuntu

MAINTAINER Ritesh H Shukla <kerneltime@gmail.com>

ENV GOPATH=/root/src
WORKDIR /root/src

RUN apt-get update &&\ 
	apt-get install -y --no-install-recommends \
	vim vim-scripts vim-gocomplete vim-youcompleteme vim-addon-manager vim-syntax-docker \
	git \
	golang gocode \
	make curl wget python clang llvm gcc g++ cmake libssl-dev

RUN go get golang.org/x/tools/cmd/goimports &&\ 
	go get github.com/golang/lint/golint
