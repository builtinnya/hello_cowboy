#!/usr/bin/env bash

/usr/local/bin/h2o -m daemon -c ./h2o.conf && \
    ./_rel/hello_cowboy_release/bin/hello_cowboy_release foreground
