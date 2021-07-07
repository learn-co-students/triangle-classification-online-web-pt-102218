
  class Triangle
    attr_accessor :x, :y, :z

    def initialize(x, y, z)
      @x = x
      @y = y
      @z = z
    end

    def kind
      if triangle_1 == true && triangle_2 == true
        puts true
      else
        raise TriangleError
      end
      if x == y && y == z && x == z
        :equilateral
      elsif x != y && y != z && x != z
        :scalene
      else
        :isosceles
      end
    end

    def triangle_1
      x.positive? && y.positive? && z.positive?
    end

    def triangle_2
      x + y > z && y + z > x && x + z > y
    end
  end

  class TriangleError < StandardError
    #def message
      #"Triangle must have a size larger than 0."
    #end
  end
