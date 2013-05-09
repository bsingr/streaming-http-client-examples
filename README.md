# Streaming http client examples

This repo contains several examples how to stream http responses via different ruby http client libraries.

## Usage

The server.sh script starts a simple streaming http server available via `GET http://localhost:5000` based on the `nc` (netcat) command. As response the server simply echos a some dots as separate chunks.

You can specify the number of chunks using the environment variable 'CHUNKS'.

Single server and client example with 3 chunks using `curl`:

    $ (CHUNKS=3 ./server.sh > /dev/null &) && (curl http://localhost:5000)
    .
    .
    .


## Net::HTTP client ([ruby-doc](http://ruby-doc.org/stdlib-2.0/libdoc/net/http/rdoc/))

See [clients/nethttp.rb](clients/nethttp.rb).

    $ ./clients/nethttp.rb

### RestClient ([rdoc](http://rdoc.info/github/rest-client/rest-client))

See [clients/restclient.rb](clients/restclient.rb).

    $ gem install restclient
    $ ./clients/restclient.rb

### Httparty ([website](http://johnnunemaker.com/httparty/))

See [clients/httparty.rb](clients/httparty.rb).

    $ gem install httparty
    $ ./clients/httparty.rb


### Streamly ([github-repo](https://github.com/brianmario/streamly))

See [clients/streamly.rb](clients/streamly.rb).

    $ gem install streamly
    $ ./clients/streamly.rb

## License

Copyright (c) 2013 Jens Bissinger. See [LICENSE.txt](LICENSE.txt)
