class Triangle
 attr_accessor :left_side, :right_side, :bottom, :kind
  
  class TriangleError < StandardError
    "The triangle is invalid."
  end
  
  def initialize(left_side, right_side, bottom)
    @left_side = left_side
    @right_side = right_side
    @bottom = bottom
  end
    
  def kind
    if left_side <= 0 || right_side <= 0 || bottom <= 0 || (left_side + right_side <= bottom || right_side + bottom <= left_side || left_side + bottom <= right_side)
       raise TriangleError
    end
    
    if (left_side == right_side) && (right_side == bottom)
     return :equilateral
    elsif
       ((left_side == right_side) && (right_side != bottom)) ||
       ((left_side == bottom) && (right_side != bottom)) ||
       ((right_side == bottom) && (left_side != bottom))
      return  :isosceles
    else
      (left_side != right_side) && (right_side != bottom) && (left_side != bottom)
      return  :scalene
     end   
       
        
        raise TriangleError
      end
    end
    
    