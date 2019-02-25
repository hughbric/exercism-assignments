class Triangle
  attr_reader :t_sides
  def initialize(t_sides)
    @t_sides = t_sides
  end
  def valid_triangle?
    t_sides.any? {|side| side <= 0} || t_sides.min(2).sum < t_sides.max
  end
  def equilateral?
    return false if valid_triangle?
    t_sides.all? {|side| t_sides.count(side) == 3}
  end
  def isosceles?
    return false if valid_triangle?
    t_sides.any? {|side| t_sides.count(side) >= 2}
  end
  def scalene?
    return false if valid_triangle?
    t_sides.all? {|side| t_sides.count(side) == 1}
  end
end