def add_numbers(num1,num2)
    my_num = num1 + num2
    puts "The sum of those numbers is #{my_num}!"
end

puts "Give us a number..."
num_first = gets.to_i

puts "Give us another number..."
num_second = gets.to_i

add_numbers(num_first,num_second)