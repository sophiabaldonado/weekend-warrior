# My original solution using nested if statements
def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      else
        return false
      end
    else
      return true
    end
  end
end

# In class solution
def leap_year?(year)
  # (evenly divisible by 4)
  # and (not evenly divisible by 100) unless also evenly divisible by 400
  (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
end
