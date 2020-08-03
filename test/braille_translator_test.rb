require './test/test_helper'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_translator'


class BrailleTranslatorTest < MiniTest::Test


  def test_it_exists
    btranslator = BrailleTranslator.new
    assert_instance_of BrailleTranslator, btranslator
  end

  def test_it_can_convert_file_to_braille
    btranslator = BrailleTranslator.new
    input = "000..0\n....00\n....0."

    assert_equal [[]] , btranslator.get_braille_letter
  end

  def test_it_can_translate
    skip
    translator = Translator.new
    assert_equal [["00", "..", ".."],["0.", "..", ".."],[".0", "00", "0."]], translator.split_message( "000..0\n+....00\n+....0.\n ")
  end
end
