require "pry"

class Triangle
  
  
  attr_accessor :equilateral, :isosceles, :scalene, :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 =side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
    raise TriangleError
  end
    if @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      :scalene
      elsif @side1 == @side2 && @side2 == @side3 && @side1 == @side3
      :equilateral
    else 
      :isosceles
    end
  end
  #nil or 0, side cant be <= 0
  #check if its legal first before conditionals
  
  
  class TriangleError < StandardError
    def message
      "illegal triangle"
    end
  end
end