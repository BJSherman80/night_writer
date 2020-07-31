require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/reader'

class ReaderTest < MiniTest::Test

  def test_it_exists
   input = "message.txt"
   output = "braille.txt"
   ARGV[0] = input
   ARGV[1] = output
   night_writer = Reader.new(input, output)
   assert_instance_of Reader, night_writer
  end


end
