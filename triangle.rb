# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
   a, b, c= [a, b, c].sort
   if a <= 0 then raise TriangleError.new end
   if ((a+b) <= c) then raise TriangleError.new end

   if ((a==b) && (b==c)) then return :equilateral end
   if ((a==b) || (b==c) || (a==c)) then return :isosceles end
		:scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

#puts triangle(1, 2, 3)
#puts triangle(5, 5, 5)
#puts triangle(5, 4, 5)
