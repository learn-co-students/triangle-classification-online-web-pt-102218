class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    checker
    if (side1 == side2) && (side2==side3) && (side3==side1)
      :equilateral
    elsif (side1 == side2) || (side2==side3) || (side3==side1)
      :isosceles
    else
      :scalene
    end
  end
  def checker
    correct = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    [side1, side2, side3].each do |x|
      correct << false if x <= 0 
    end
    raise TriangleError if correct.include?(false)
  end
class TriangleError < StandardError
    def message
      "Triangle is not correct"
    end
  end
end
