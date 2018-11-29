require 'pry'

class Triangle
  
  @@args = []
  
  def initialize(arg1, arg2, arg3)
    @arg1 = arg1
    @arg2 = arg2
    @arg3 = arg3
    @@args << arg1
    @@args << arg2
    @@args << arg3
  end
  
  
  def triangle?
    @@args.each do |i| 
      if i == 0 || i < 0 
         raise TriangleError
      end
    end
    true 
  end
  
  
  def kind
    if triangle? == true
      if @arg1 == @arg2 && @arg1 == @arg3
        return :equilateral
      elsif @arg1 == @arg2 || @arg1 == @arg3 || @arg2 == @arg3
        return :isosceles
      elsif @arg1 != @arg3 && @arg1 != @arg2
        return :scalene
      end
    end
  end
  
  class TriangleError < StandardError
  end
  
  def assert_kind_of
  end
end
