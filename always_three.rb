def always_three(my_input)
    number1 = my_input.to_i
    return ((((number1 + 5) * 2) - 4) / 2) - number1
end

puts "Give me a number..."
number1 = gets
puts "Your final number: " + always_three(number1).to_s


