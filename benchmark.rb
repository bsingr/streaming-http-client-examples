#!/usr/bin/env ruby

require 'benchmark'

TIMES = (ARGV[1] || 10).to_i

module Runner
  class << self
    def server chunks
      system "CHUNKS=#{chunks} ./server.sh > /dev/null &"
    end

    def client path
      system "./#{path} > /dev/null"
    end
  end
end

Benchmark.bmbm do |x|
  [
      1_000,
     10_000,
    100_000
  ].each do |chunks|
    Dir.glob('clients/*').each do |path|
      next if path =~ /streamly/

      x.report ('%20s @ %20d' % [File.basename(path), chunks]) do
        TIMES.times do
          Runner.server chunks
          Runner.client path
        end
      end
    end
  end
end
