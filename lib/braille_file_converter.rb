require './lib/braille_translator'
require 'pry'

class BrailleFileConverter

  attr_reader :input_text, :chunked_text, :read_braille

  def initialize(input, output)
    @input  = input
    @output = output
    read_braille
    write
  end

  def read_braille
    input = File.open(@input, "r")
    @input_text = input.read.chomp
    input.close
  end

  def input_chunk
    text = (BrailleTranslator.new.braille_translator(@input_text))
    text.scan(/.{1,80}/)+"\n"
  end

  def write
    output = File.open(@output, "w")
    count = output.write(BrailleTranslator.new.braille_translator(@input_text))
    puts "Created #{@output} containing #{count} characters."
    output.close
  end
end
