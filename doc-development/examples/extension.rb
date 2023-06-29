#!/usr/bin/ruby -w
require 'file/path-temp'

## {"start":"all"}
File.path_temp('ext'=>'txt') do |path|
  puts path # => e,g, ./5314921893963471.txt
end
## {"end":"all"}