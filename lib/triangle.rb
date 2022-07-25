class Triangle
 
attr_accessor :x,:y,:z


def initialize(x, y, z)
  @x = x
  @y = y
  @z = z
  raise TriangleError unless [x,y,z].all?(&:positive?) && x + y > z && x + z > y && z + y > x
end


def kind
  # check_triangle
if x == y && y == z
  :equilateral
elsif x == y || y == z || x == z
  :isosceles
elsif x != y || y != z
  :scalene
  end
end

# def check_triangle
#   raise TriangleError unless [x,y,z].all?(&:positive?) && x + y > z && x + z > y && z + y > x
# end

class TriangleError < StandardError

end

     
# if x || y || z == 0 raise error
# if x, y, z is negative raise error
# if x + y < z etc.. raise error




end
