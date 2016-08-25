#!/bin/sh
#
# from https://github.com/keybase/client/issues/2938
#

# bashmarks
g gopath

go get github.com/keybase/client/go/keybase
env GOOS=linux GOARCH=arm GOARM=5 GO15VENDOREXPERIMENT=1 \
go build -tags production github.com/keybase/client/go/keybase
