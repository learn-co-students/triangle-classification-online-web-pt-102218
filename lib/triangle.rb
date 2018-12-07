class Triangle
  
  attr_accessor :num, :num1, :num2
  
  
  def initialize(num, num1, num2)
    @num = num 
    @num1 = num1 
    @num2 = num2 
  end 

  def kind 
   
    raise TriangleError unless is_valid? 
      
    
    if num == num1 && num == num2 
      :equilateral
    elsif num == num1 || num == num2 || num1 == num2 
      :isosceles 
    else :scalene
      
    end 
    
  end
  
  def is_valid?
    num  > 0 && num1 > 0 && num2 > 0 &&
    num + num1 > num2 && num + num2 > num1 && num1 + num2 > num 
    
  end 
  
  class TriangleError < StandardError
    
  end 
end 



