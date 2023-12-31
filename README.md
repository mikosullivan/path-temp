# path-temp

`File.path_temp` defines a temporary file path. It does not create the file. If,
after the do block, a file exists at that path then the file is deleted.

```ruby
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
```

## root

To put the path somewhere besides the current directory, use the `root` option:

```ruby
File.path_temp('root'=>'/tmp') do |path|
  puts path # => e,g, /tmp/458577463617317
end
```

## extension

To give the path an extension, use the `ext` option:

```ruby
File.path_temp('ext'=>'txt') do |path|
  puts path # => e,g, ./5314921893963471.txt
end
```

# Installation

The usual:

```bash
sudo gem install path-temp
```
Or however you like to install gems. It's just a single file.


## License

Open source, MIT license.

## Author

Mike O'Sullivan
mike@idocs.com

## History

| version | date         | notes                         |
|---------|--------------|-------------------------------|
| 1.0     | Jun 29, 2023 | Initial upload.               |