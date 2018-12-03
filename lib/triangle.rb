class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene, :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    if (s1 <= 0 || s2 <= 0 || s3 <=0) || (s1 + s2 <= s3 || s2 + s3 <= s1 || s1 + s3 <= s2)
      raise TriangleError
  end
    if s1 != s2 && s2 != s3 && s1 != s3
      :scalene
      elsif s1 == s2 && s2 == s3 && s1 == s3
      :equilateral
    else 
      :isosceles
    end
  end
  
  
  
  class TriangleError < StandardError
    def message
      "illegal triangle"
    end
  end
end