# when creating the program noticed that the ? wasn't neccassy when I ran the program indepent of the test/spec file, the "?" wasn't neccessay, is this syntax used for readability?
# started the program with the boarest conditions first, quickly realized that I needed the most specific conditions to run first to ensure all checks were made.

def leap_year?(year)
  if (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
    return leap_year = true
  elsif (year % 4 == 0) && (year % 100 == 0)
    return leap_year = false
  elsif (year % 4 == 0)
    return leap_year = true
  else
    return leap_year = false
  end
end

puts leap_year?(2000)

  # ```plain
  # on every year that is evenly divisible by 4
  #   except every year that is evenly divisible by 100
  #     unless the year is also evenly divisible by 400
  # ```
  #
  # For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
  # year, but 2000 is.
