class Anagram
  def initialize(word_to_match)
    @word_to_match = word_to_match.downcase
  end

  def match(list)
    @sorted_characters_to_match = @word_to_match.chars.sort
    list.select { |word| anagram?(word.downcase) }
  end

  private

  def anagram?(word)
    @sorted_characters_to_match == word.chars.sort unless identical?(word)
  end

  def identical?(word)
    @word_to_match == word
  end
end
