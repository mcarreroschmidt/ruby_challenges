def get_user_input(question)
    puts question
    answer = gets.to_s.strip
end

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
def greeting()
	current_hour = determine_current_hour
    name = get_user_input("What is your name?")
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}!"
end
greeting()