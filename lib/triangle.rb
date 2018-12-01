require "pry"

class Triangle

  attr_accessor :s1, :s2, :s3

  @@triangle = []

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @@triangle << self
  end

  def self.all
    @@triangle
  end

  def kind
    if @s1 == @s2 && @s1 == @s3
      :equilateral
    elsif
      @s1 == @s2 && @s1 != @s3 && @s2 != @s3 || @s2 == @s3 && @s1 != @s2 && @s3 != @s1 || @s3 == @s1 && @s1 != @s2 && @s3 != @s2
        :isosceles
      elsif
        @s1 != @s2 && @s2 != @s3 && @s1 != @s3
        :scalene
    end
  end


  class TriangleError < StandardError
    "This is not a valid triangle."
  end

end
