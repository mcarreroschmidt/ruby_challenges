puts "\nWe're going to help you get dressed. What's the weather like today?"
weather = gets.to_s.strip!

case(weather)
when 'sunny'		
    puts "   Wear some sunglasses."
when 'cloudy'	
    puts "   Wear sun screen."
when 'rainy'	
    puts "   Wear rain jacket."
when 'foggy'	
    puts "   Wear xray glasses."
else			
    puts "   In that case, just go naked."
end
