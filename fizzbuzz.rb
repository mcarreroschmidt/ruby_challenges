def fizzBuzz(fb_num)
    output = fb_num.to_s
    if(fb_num % 15  == 0) 
        output = "FizzBuzz"
    elsif(fb_num % 3  == 0)
        output = "Fizz"
    elsif(fb_num % 5  == 0)
        output = "Buzz"
    end
    return output
end

i = 0

while (i <= 100)
    puts fizzBuzz(i)
    i += 1
end

puts "That's it!"