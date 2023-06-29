#!/usr/bin/ruby -w
require 'tatum/stdout'
require 'file/path-temp'

hold_path = nil

File.path_temp('root'=>'/tmp', 'ext'=>'txt') do |path|
  hold_path = path
  File.write path, 'whatever'
  puts File.read(path)
  puts File.exist?(hold_path)
end

puts File.exist?(hold_path)



# done
puts '[done]'