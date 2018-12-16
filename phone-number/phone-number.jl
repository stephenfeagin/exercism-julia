function clean(phone_number)
    # Extract only the numbers by replacing all non-numeric characters with ""
    nums = replace(phone_number, r"\D+" => s"")

    # Then, search for the desired pattern, and return nothing if it does not
    # occur in the number string
    pattern = r"^1?[2-9]\d{2}[2-9]\d{6}$"
    if !occursin(pattern, nums)
        return nothing
    end

    # If the pattern is present and the first character is '1', then return the
    # string starting from index 2
    # Otherwise, just return the number string
    if nums[1] === '1'
        return SubString(nums, 2, lastindex(nums))
    else 
        return nums
    end
end
