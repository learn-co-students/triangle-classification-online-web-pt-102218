class Triangle
  attr_accessor :side_1, :side_2, :side_3, :kind
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    
    if side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1 || side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError
      
    elsif side_1 == side_2 && side_1 == side_3
      @kind = :equilateral
      
    elsif side_1 == side_2 && side_1 != side_3 || side_1 == side_3 && side_1 != side_2 || side_2 == side_3 && side_2 != side_1
      @kind = :isosceles
      
    elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3
      @kind = :scalene
    end
  end
 
  class TriangleError < StandardError
    puts "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. And each side must be larger than 0."
  end
end

