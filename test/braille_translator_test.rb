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

  def test_it_can_convert_file_to_braille_string
    btranslator = BrailleTranslator.new
    input = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n"
    result = "0.00..0..0..0.0.0.0.0.0.0..00........000.00..00.0.000.0.0.0.00.0.."
    assert_equal result, btranslator.get_braille_letters_into_string(input)
  end

  def test_it_can_get_braille_letters
    btranslator = BrailleTranslator.new
    input = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n"
    btranslator.get_braille_letters_into_string(input)
    assert_equal ["0.00.."], btranslator.get_braille_letters(input)[0]
  end

  def test_it_can_translate_braille
    btranslator = BrailleTranslator.new
    input = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n"
    btranslator.get_braille_letters_into_string(input)
    btranslator.get_braille_letters(input)
    btranslator.braille_strip(input)
    assert_equal "hello world", btranslator.braille_translator(input)
  end


end
