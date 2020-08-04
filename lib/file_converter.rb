require './lib/translator'
require 'pry'

class FileConverter

  attr_reader :input_text, :chunked_text

  def initialize(input, output)
    @input  = input
    @output = output
    read
    write
  end

  def read
    input = File.open(@input, "r")
    @input_text = input.read.chomp
    input.close
  end

  def input_chunk
      text = @input_text.scan(/.{1,80}/)
      text.map do |text|
        Translator.new.translator(text)
    end.join("\n")
  end

  def write
    output = File.open(@output, "w")
    output.write(input_chunk)
    puts "Created #{@output} containing #{@input_text.length} characters."
    output.close
  end
end
