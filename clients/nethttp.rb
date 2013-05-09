#!/usr/bin/env ruby
require 'net/http'
uri = URI('http://localhost:5000')
Net::HTTP.get_response(uri) do |response|
  response.read_body do |chunk|
    puts chunk
  end
end
