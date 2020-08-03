require './test/test_helper'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/braille_file_converter'

class BrailleFileConverterTest < MiniTest::Test

  def test_it_exists
   input = "braille.txt"
   output = "message.txt"
   ARGV[0] = input
   ARGV[1] = output
   night_reader = BrailleFileConverter.new(input, output)
   assert_instance_of BrailleFileConverter, night_reader
  end

  def test_it_can_read_txt_docs
    input = "braille.txt"
    output = "message.txt"
    ARGV[0] = input
    ARGV[1] = output
    night_reader = BrailleFileConverter.new(input, output)
    assert_equal "000..0\n....00\n....0.", night_reader.input_text
  end
end
