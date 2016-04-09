class Robot
  LETTERS = ("A".."Z").to_a
  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = rand_letters + rand_numbers
  end

  private
  def rand_letters
    LETTERS[rand(26)] + LETTERS[rand(26)]
  end

  def rand_numbers
    "%03d" % rand(999)
  end
end

## Alternative solutions

# def rand_letters
#   ("A".."Z").to_a.concat(("A".."Z").to_a).sample(2).join
# end


# def rand_numbers(digits)
#   raise ArgumentError, "Random number digits must be greater than zero" if digits <= 0
#   if digits == 1
#     return rand(0..9)
#   else
#     range_start = 10 ** (digits - 1)
#     range_end = (10 ** (digits)) - 1
#     return rand(range_start..range_end)
#   end
# end
