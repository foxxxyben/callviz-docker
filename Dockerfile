FROM debian

RUN apt-get update -y -qq

RUN apt-get install -y -qq --no-install-recommends \
    golang graphviz

RUN go get -u github.com/TrueFurby/go-callvis \
    && cd $GOPATH/src/github.com/TrueFurby/go-callvis \
    && make
