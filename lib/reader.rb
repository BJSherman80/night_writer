require './lib/file_converter'

class Reader

  def initialize(input, output)
    @reader = FileConverter.new
    @input  = @reader.read
    @output = output
    message
  end

  def message
    puts "Created #{@output} containing #{@input.length} characters."
  end

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
