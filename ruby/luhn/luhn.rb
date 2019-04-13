class Luhn
  def self.valid?(number)
    new(number).valid?
  end

  def valid?
    return if incorrect_length? || !digits_only?
    
    (checksum % 10).zero?
  end

  private

  def incorrect_length?
    number.strip.length < 2
  end

  def digits_only?
    number.scan(/[^ \d\s]/).empty?
  end
  
  def initialize(number)
    @number = number
  end
  
  def checksum
    digits.reverse.each_slice(2).sum { |odd, even = 0| 
      odd + double(even)
    }
  end

  def digits
    number.scan(/\d/).map(&:to_i)
  end

  def double(even)
    even *= 2
    even > 9 ? even -= 9 : even
  end

  attr_reader :number
end