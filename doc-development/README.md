# path-temp

`File.path_temp` defines a temporary file path. It does not create the file. If,
after the do block, a file exists at that path then the file is deleted.

[import]: {"path": "basic.rb"}

## root

To put the path somewhere besides the current directory, use the `root` option:

[import]: {"path": "root.rb", "range":"all"}

## extension

To give the path an extension, use the `ext` option:

[import]: {"path": "extension.rb", "range":"all"}

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