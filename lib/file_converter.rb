require './lib/translator'
require 'pry'

class FileConverter

  attr_reader :input_text, :chunked_text

  def initialize(input, output)
    @input  = input
    @output = output
    read
    input_chunk
    write
    message
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
    output.close
  end

  def message
    puts "Created #{@output} containing #{@input_text.length} characters."
  end


# class FileConverter
#
#   def initialize(input, output)
#     @reader = Reader.new
#     @input  = @reader.read
#     @output = output
#     message
#   end
#
#   def message
#     puts "Created #{@output} containing #{@input.length} characters."
#   end

  # def encode_file_to_braille
  #   # I wouldn't worry about testing this method
  #   # unless you get everything else done
  #   plain = reader.read
  #   braille = encode_to_braille(plain)
  # end
  #
  # def encode_to_braille(input)
  #   # you've taken in an INPUT string
  #   # do the magic
  #   # send out an OUTPUT string
  # end
end
