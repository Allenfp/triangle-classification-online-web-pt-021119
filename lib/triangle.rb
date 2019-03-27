class Triangle

  attr_accessor :side_1, :side_2, :side_3, :type

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end


  def kind
    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0 
      raise TriangleError
    elsif side_1 == side_2 && side_2 == side_3
      @type = :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      @type = :isosceles
    else
      @type = :scalene
    end

  end

  class Triangle
  # triangle code
   
    class TriangleError < StandardError
      # triangle error code
    end

  end

end
