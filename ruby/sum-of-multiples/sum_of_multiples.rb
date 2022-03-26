class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples.filter{ |m| m != 0 }
  end

  def to(final_number)
    @multiples.flat_map do |multiple|
      (multiple...final_number).step(multiple).to_a
    end.uniq.sum
  end
end
