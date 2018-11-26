require 'byebug'
class Triangle
  attr_accessor :length_1, :length_2, :length_3
  @@lengths = []
  @@hash = {}

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

  def make_hash
    @@lengths.each do |length|
      if @@hash[length]
        @@hash[length] += 1
      else
        @@hash[length] = 1
      end
    end
    @@lengths.clear
  end

  def clear_hash
    @@hash.clear
  end

  def kind
    valid?
    make_hash
    # Equilateral triangle - all sides same length
    # Isosceles triangle - two equal sides
    # Scalene Triangle - no congruent sides

    if @@hash.values.count == 1
      clear_hash
      return :equilateral
    elsif @@hash.values.count == 2
      clear_hash
      return :isosceles
    else
      clear_hash
      return :scalene
    end
  end

  class TriangleError < StandardError

  end
end

# puts Triangle.new(10, 10, 10).kind