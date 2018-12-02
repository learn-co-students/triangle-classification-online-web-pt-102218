class Triangle
  # write code here

  attr_accessor :kind

  class TriangleError < StandardError
    
  end
  def initialize(a,b,c)
    arr = [a,b,c].sort
    if arr[0]<=0 || arr.sort[2]>=arr[0]+arr[1]
      raise TriangleError
    end
    case arr.uniq.length
    when 1
      @kind = :equilateral
    when 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end
end
