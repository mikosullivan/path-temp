class File
  def self.path_temp(opts={})
    opts = {'delete'=>true}.merge(opts)
    
    # root
    if opts['root']
      root = opts['root'].sub(/\/*\z/mu, '/')
    else
      root = './'
    end
    
    # full path
    path = rand.to_s
    path = path.sub(/\A0\./mu, '')
    path = root + path
    
    # add extension
    if opts['ext']
      ext = opts['ext']
      ext = ext.sub(/\A\.*/mu, '.')
      path += ext
    end
    
    begin
      yield path
    ensure
      if opts['delete'] and File.exist?(path)
        File.delete path
      end
    end
  end
end