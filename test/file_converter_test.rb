require './test/test_helper'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/file_converter'

class FileConverterTest < MiniTest::Test

  def test_it_exists
   input = "message.txt"
   output = "braille.txt"
   ARGV[0] = input
   ARGV[1] = output
   night_writer = FileConverter.new(input, output)
   assert_instance_of FileConverter, night_writer
  end

  def test_it_can_read_txt_docs
    output = "braille.txt"
    input = "message1.txt"
    file_converter = FileConverter.new(input, output)
    assert_equal "cat", file_converter.input_text
  end


  def test_it_can_write_docs
    skip
    output = "braille.txt"
    input = "message1.txt"
    @input_text.stubs(write).returns("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n")
    braile = mock('text document')
    night_writer = FileConverter.new(input, output)
    assert_equal "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n", night_writer.write
  end






end
