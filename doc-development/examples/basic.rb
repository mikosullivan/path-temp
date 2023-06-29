#!/usr/bin/ruby -w
require 'file/path-temp'

# call File.path_temp
File.path_temp() do |path|
  # defines a path in current directory with a bunch of random numbers as
  # the name e.g. ./18168068873296828
  puts path 
  
  # file is *not* automatically created
  puts File.exist?(path) # => false
  
  # write to the path
  File.write path, 'whatever'
  
  # file now exists
  puts File.exist?(path) # => true
end

# at this point, the file no longer exists