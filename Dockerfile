FROM erlang:18
MAINTAINER Naoto Yokoyama <builtinnya@gmail.com>

ADD . /hello_cowboy
WORKDIR /hello_cowboy

RUN make

EXPOSE 8080

CMD ["./_rel/hello_cowboy_release/bin/hello_cowboy_release", "foreground"]
