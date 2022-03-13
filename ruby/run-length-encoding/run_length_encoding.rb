class RunLengthEncoding
  def self.encode(plaintext)
    regexp_capture_any_char_that_repeats_more_than_once = /(.)\1+/
    plaintext.gsub(regexp_capture_any_char_that_repeats_more_than_once) { $&.length.to_s + $&.squeeze }
  end

  def self.decode(compressed)
    regexp_capture_repeating_digits_with_their_single_chars = /(\d+)(.)/
    compressed.gsub(regexp_capture_repeating_digits_with_their_single_chars) { $2 * $1.to_i }
  end
end
