Gem::Specification.new do |spec|
  spec.name        = 'path-temp'
  spec.version     = '1.0'
  spec.date        = '2023-06-29'
  spec.summary     = 'path-temp'
  spec.description = 'Utility for defining a path that, if the file exists, is deleted at the end of the block.'
  spec.authors     = ["Mike O'Sullivan"]
  spec.email       = 'mike@idocs.com'
  spec.homepage    = 'https://github.com/mikosullivan/path-temp'
  spec.license     = 'MIT'
  
  spec.files = [
    'lib/file/path-temp.rb',
    'README.md',
  ]
end