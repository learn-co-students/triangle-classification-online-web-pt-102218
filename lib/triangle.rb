class Triangle
  attr_accessor :length, :height, :width
  # write code here
  def initialize(length, height, width)
    @length = length
    @height = height
    @width = width
  end

  def kind
    if @height <= 0 || @length <= 0 || @width <= 0
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    elsif @height + @length < @width || @height + @width < @length || @width + @length < @height
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
    if @height == @length && @length == @width
      :equilateral
    elsif @height == @length || @length == @width || @height == @width
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0."
    end
  end
end

triangle = Triangle.new(0, 0, 0).kind
