class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples.filter { |m| m != 0 }
  end

  def to(final_number)
    return 0 if @multiples.empty?
    (0...final_number).select{ |number| multiple?(number) }.reduce(:+)
  end

  private

  def multiple?(number)
    @multiples.any? { |multiple| number % multiple == 0 }
  end
end
