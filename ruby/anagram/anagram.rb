class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(list)
    matches = []
    initial_word_chars = @word.chars

    list.each do |word|
      downcase_word = word.downcase
      next if downcase_word.length != @word.length || downcase_word == @word

      list_word_chars = downcase_word.chars

      if list_word_chars.all? { |char| @word.include?(char) && list_word_chars.count(char) == initial_word_chars.count(char) }
        matches << word
      end
    end
    matches
  end
end
