class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples.filter { |m| m != 0 }
  end

  def to(final_number)
    return 0 if @multiples.empty?
    factors = []

    (final_number - 1).downto(0) { |constituent_number|
      if @multiples.count { |multiple| constituent_number % multiple == 0 } > 1
        factors << constituent_number
        next
      end
      
      @multiples.each do |multiple|
        if constituent_number % multiple == 0
          factors << constituent_number
        end
      end
    }
    factors.sum
  end
end
