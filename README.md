# Streaming http client examples

This repo contains several examples how to stream http responses via different ruby http client libraries.

## Usage

The server.sh script starts a simple streaming http server listening on port 5000 based on the `nc` (netcat) command. It will simply echo the text 'hello' line by line.

Just run it like so:

    $ ./server.sh

The following client scripts then will all just do simple http GET requests on `http://localhost:5000` and print to stdout what they receive.

## Curl

	$ curl http://localhost:5000
	hello
	hello
	hello
	...
	
## Net::HTTP client ([ruby-doc](http://ruby-doc.org/stdlib-2.0/libdoc/net/http/rdoc/))

See [clients/nethttp.rb](clients/nethttp.rb).

	$ ./clients/nethttp.rb

## License

Copyright (c) 2013 Jens Bissinger. See [LICENSE.txt](LICENSE.txt)
