q = " Are you good? [Y/N]"
responses = [
    "I love you!",
    "But I love you!",
    "That's too bad. I love you a little less.",
    "And now even less.",
    "And now more... or less.",
    "Not loving you so much.",
    "Getting on my nerves!"   
]
i = 0
answer = "n";
while (answer != "y")
    puts responses[i]
    puts q
    answer = gets.to_s.chomp.downcase
    if i >= responses.length - 1 then i = 0 else i += 1 end
end
    
puts "Now that's more like it." + q
gets
puts "Just kidding!"
