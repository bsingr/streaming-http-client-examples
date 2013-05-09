#!/usr/bin/env ruby
require 'restclient'
reader = lambda do |response|
  response.read_body do |chunk|
    puts chunk
  end
end
resource = RestClient::Resource.new('http://localhost:5000',
                                    :block_response => reader)
resource.get
