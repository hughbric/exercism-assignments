class RunLengthEncoding
  def self.encode(input)
    input_chars = input.split('')
    encoded_chars = []
    k = 0

    while k < input_chars.length do
      char_counter = 0

      input_chars.each_with_index do |char, index|
        if input_chars[k] == input_chars[index + k]
          char_counter += 1
        else
          if char_counter > 1
            encoded_chars << char_counter
          end
          encoded_chars << input_chars[k]
          k += index
          break
        end
      end
    end
    encoded_chars.join('')
  end
end
