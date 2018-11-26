class Triangle
  attr_accessor :length_1, :length_2, :length_3
  @@lengths = []

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
    @@lengths << length_1
    @@lengths << length_2
    @@lengths << length_3
  end

  def valid?
    raise TriangleError if (@length_1 + @length_2) < @length_3 || @@lengths.include?(0)
  end

  def kind
    valid?
    # Equilateral triangle - all sides same length
    # Isosceles triangle - two equal sides
    # Scalene Triangle - no congruent sides

    if @length_1 == @length_2 && @length_2 == @length_3
      return :equilateral
    elsif @length_1 == @length_2 || @length_2 == @length_3 || @length_1 == @length_3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
end
