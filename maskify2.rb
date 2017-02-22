def maskify(credit_card)
  new_array = []
  number_array = credit_card.to_s.split('').map(&:to_i)
  number_array.reverse.each_with_index do |number, index|
    if index < 4
      new_array << number
    else
      new_array << "#"
    end
  end
  new_array.reverse.join("")
end
puts maskify(374934793049504)
puts maskify(458945202088000)
puts maskify(464)
puts maskify(1234567891234567)
