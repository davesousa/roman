@roman = {
  M: 1000,
  D: 500,
  C: 100,
  L: 50,
  X: 10,
  V: 5,
  I: 1
}

def to_roman(num)
  numeral = ""

  @roman.each do |key, value|
      times = num / value
      if times >= 1
        remainder = num % value
        keyletter = key.to_s * times
        numeral << keyletter
        num = num - (value * times)
      end
  end
  return numeral
end




# Drive code... this should print out trues.
puts to_roman(1)
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?
