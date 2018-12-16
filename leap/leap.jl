function is_leap_year(year::Int)
    # First, year must be divisible by 4
    if year % 4 === 0
        # If year is also divisible by 400, then it is a leap year
        if year % 400 === 0
            return true
        end
        # If it's not divisible by 400, then it's a leap year if it is not
        # divisible by 100
        return year % 100 !== 0
    end

    # Otherwise, it's not a leap year
    return false
end

