#!/usr/bin/ruby -w
require 'file/path-temp'

## {"start":"all"}
File.path_temp('root'=>'/tmp') do |path|
  puts path # => e,g, /tmp/458577463617317
end
## {"end":"all"}