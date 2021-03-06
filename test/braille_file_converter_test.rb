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
    skip
    input = "braille.txt"
    output = "1_letter_message.txt"
    # input_text.stub(input_text).returns("000..0000.0.00\n+..000......0.0\n+........0...0.")
    # input_text = mock('text object')
    night_reader = BrailleFileConverter.new(input, output)
    assert_equal "0.
    ..
    .." , night_reader.input_chunk
  end
end
