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

end
