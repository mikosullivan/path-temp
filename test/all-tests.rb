require 'helper'

# Test File.temp_path

class TempPathTest < Minitest::Test
  # basic test of creating, writing to, and deleting test file
  def test_basic
    hold_path = nil
    
    File.path_temp() do |path|
      assert path.match(/\A\.\//mu)
      refute File.exist?(path)
      
      hold_path = path
      
      File.write path, 'whatever'
      assert File.exist?(hold_path)
      assert_equal 'whatever', File.read(path)
    end
    
    refute File.exist?(hold_path)
  end
  
  # put temp file in /tmp
  def test_root
    File.path_temp('root'=>'/tmp') do |path|
      assert path.match(/\A\/tmp\//mu)
    end
  end
  
  # set extension
  def test_extension
    # with dot
    File.path_temp('ext'=>'.txt') do |path|
      assert path.match(/\.txt\z/mu)
    end
    
    # without dot
    File.path_temp('ext'=>'txt') do |path|
      assert path.match(/\.txt\z/mu)
    end
  end
end