def persistence(number)
  amount_of_times = 0
  while number > 9 || number < 0
    var = number.to_s.split('').map(&:to_i)
    number = var.inject(:*)
    amount_of_times += 1
  end
  amount_of_times
end

puts persistence(39)
puts persistence(4)
puts persistence(25)
puts persistence(999)
