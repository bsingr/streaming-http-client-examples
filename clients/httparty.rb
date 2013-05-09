#!/usr/bin/env ruby
require 'httparty'
HTTParty.get('http://localhost:5000') do |chunk|
  puts chunk
end
