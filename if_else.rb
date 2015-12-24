if 9 + 7 == 16
	puts "9 + 7 does in fact equal 16!"
end

expected_name = 'Marty'
puts "What's your name?"
your_name = gets.to_s.strip!
if expected_name == your_name
    puts "Howdy, #{your_name}!"
else
    puts "Oops, #{your_name}, I thought your name was #{expected_name}. Sorry about that!"
end


puts "\nEnough of that... Want to play a game, #{your_name}?\nGive me a number:"
number1 = gets.to_i
puts "And another number:"
number2 = gets.to_i
puts "Now, what's the sum of those two numbers?"
expected_result = gets.to_i
puts "Hmmm... thinking..."
if number1 + number2 == expected_result
    puts "#{number1} + #{number2} does in fact equal #{expected_result}!"
elsif number1 + number2 < expected_result
    puts "Eh... you're a little high... (#{number1 + number2})"
else
    puts "You're a little low, sorry... (#{number1 + number2})"
end
