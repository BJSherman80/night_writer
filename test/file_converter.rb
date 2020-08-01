require './test/test_helper'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_converter'
require 'pry'

class FileConverterTest < MiniTest::Test

  def test_it_exists
   input = "message.txt"
   output = "braille.txt"
   ARGV[0] = input
   ARGV[1] = output
   night_writer = FileConverter.new(input, output)
   assert_instance_of FileConverter, night_writer
  
  end


end
