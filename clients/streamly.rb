#!/usr/bin/env ruby
require 'streamly'
Streamly.get('http://localhost:5000') do |chunk|
  puts chunk
end
