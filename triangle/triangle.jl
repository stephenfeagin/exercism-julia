"""
    is_triangle(sides)

Check if an array is a valid triangle, having all sides greater than 0 and each
side being smaller than the sum of the other two sides.
"""
function is_triangle(sides)
    if !all(sides .> 0)
        return false
    end

    if !all(sides[1] < sides[2] + sides[3] &&
            sides[2] < sides[1] + sides[3] &&
            sides[3] < sides[1] + sides[2])
        return false
    end
    true
end

"""
    is_equilateral(sides)

Check if an array is a valid triangle, and if all sides are the same length
"""
function is_equilateral(sides)
    is_triangle(sides) && all(sides .== sides[1])
end

"""
    is_isosceles(sides)

Check if an array is a valid triangle and if at least two sides are of equal length
"""
function is_isosceles(sides)
   is_triangle(sides) && (sum(sides .== sides[1]) >= 2 || sum(sides .== sides[2]) >= 2)
end

"""
    is_scalene(sides)

Check if an array is a valid triangle and if it is not isosceles
"""
function is_scalene(sides)
    is_triangle(sides) && !is_isosceles(sides)
end
