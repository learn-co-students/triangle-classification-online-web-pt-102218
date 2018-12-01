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
    elsif kind2
  end
    if @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      :scalene
      elsif @side1 == @side2 && @side2 == @side3 && @side1 == @side3
      :equilateral
    else 
      :isosceles
  end
  end
  
  def kind2
    if @side1 + @side2 > @side3 || @side2 + @side3 > @side1 || @side1 + @side3 > @side2
    begin
    raise TriangleError
    rescue TriangleError => error
    puts error.message
    Triangle.new
  end
  
  
  class TriangleError < StandardError
    def message
      "illegal triangle"
    end
  end
end