require './test/test_helper'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < MiniTest::Test


  def test_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_it_can_seperate_message
    translator = Translator.new
    assert_equal ["h","e","l","l","o"], translator.split_message("hello")
  end

  def test_it_can_translate_a_letter
    translator = Translator.new

    assert_equal ["0.", "..", ".."], translator.translate_letter("a")
  end

  def test_it_can_translate_word
    translator = Translator.new
    assert_equal [["00", "..", ".."],["0.", "..", ".."],[".0", "00", "0."]], translator.translate_word("cat")
  end

  def test_it_can_output_translated_word_in_columns
    skip
    translator = Translator.new
    result = [["00
", "..
", "..
"], ["0.
", "..
", "..
"], [".0
", "00
", "0.
"]]
    assert_equal result, translator.word_to_column("cat")

    # assert_equal ["00" , translator.word_to_column("cat")
    #               ".."
    #               ".."]
  end

end
