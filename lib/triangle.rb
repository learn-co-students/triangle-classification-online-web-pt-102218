class Triangle
  attr_accessor :side1, :side2, :side3
  
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if valid_triangle  && valid_triangle2  
      puts true 
    else 
      raise TriangleError 
    end 
    
    if side1 == side2 && side2 == side3 && side3 == side1
      :equilateral
     elsif side1 != side2 && side2 != side3 && side3 != side1
      :scalene
    else
      :isosceles
    end
  end
    
 
  def valid_triangle 
    side1.positive? && side2.positive? && side3.positive?
  end 
  
  def valid_triangle2 
    side1 + side2 > side3 && side2 + side3 > side1 && side3 + side1 > side2
  end 
end

class TriangleError < StandardError
  
end
    
  
  
  

