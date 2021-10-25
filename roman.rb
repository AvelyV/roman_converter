# Roman Numeral to Decimal numbers Converter
def convert(roman)
  x = { i: 1, v: 5, x: 10, l: 50, c: 100, d: 500, m: 1000 }
  result = []

  # if parameter is a key in the hash, add the value to result array
  roman.downcase.chars.each do |item|
    result << x[item.to_sym] if x.include?(item.to_sym)
  end

# # Option 1
#   # if product of .inject is nil (empty array), print error
#   # else print the result
#   if result.inject(:+).nil?
#     puts "Error!"
#   else
#     puts result.inject(:+)
#   end

# # Option 2
#   # if product of .inject is nil (empty array), print error
#   # else print the result
#   puts result.inject(:+).nil? ? 'Error' : result.inject(:+)

# Option 3
  # if result.inject(:+) evaluates to true it will print out the result without
  #  evaluating whats on the other side of ||
  # if result.inject(:+) evaluates to falsy it will execute code on the other side of ||
  p result.inject(:+) || "Error :("

end

convert('mcxxvii')
