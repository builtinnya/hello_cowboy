FROM erlang:18
MAINTAINER Naoto Yokoyama <builtinnya@gmail.com>

RUN apt-get update && apt-get install -y cmake
RUN git clone https://github.com/h2o/h2o.git /h2o
WORKDIR /h2o
RUN cmake -DWITH_BUNDLED_SSL=on .
RUN make
RUN make install

COPY . /hello_cowboy
WORKDIR /hello_cowboy
RUN make

EXPOSE 80 8080

CMD ["./start.sh"]
