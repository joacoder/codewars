def maskify(credit_card)
  number_array = credit_card.to_s.split('').map(&:to_i)
  length = number_array.length
  if length <= 4
    return credit_card
  end
  left_array = number_array[0..-5]
  right_array = number_array[-4..-1]
  final_array = left_array.map {|e| "#"} + right_array
  final_array.join("")
end

puts maskify(6)
