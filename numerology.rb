def get_user_input(question)
    puts question
    answer = gets.to_s.strip!
end
def get_birth_path_number(birthday_input)
    birthday_input.scan(/\d+/).join('')
    birthday_array1 = birthday_input.split(//).map(&:to_i)
    birth_path_number = birthday_array1.inject(:+)
    if birth_path_number > 9
        birthday_array2 = birth_path_number.to_s.split(//).map(&:to_i)
        birth_path_number = birthday_array2.inject(:+)
    end
end
def birth_path_number_results(birth_path_number)
    output = "Your numerology number is #{birth_path_number}\n"
    case(birth_path_number)
    when 1		
        output += "\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.\n\n"
    when 2		
        output += "\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.\n\n"
    when 3		
        output += "\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter.\n\n"
    when 4		
        output += "\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.\n\n"
    when 5		
        output += "\nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.\n\n"
    when 6		
        output += "\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.\n\n"
    when 7		
        output += "\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.\n\n"
    when 8		
        output += "\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.\n\n"
    when 9		
        output += "\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars.\n\n"
    else
        output += "\nNever mind. You're dead.\n\n"
    end
end
def main()
    birthday = get_user_input("\nNumerology fun... What's your birthday (using digits, e.g. 6/26/1981)?")
    birth_path_number = get_birth_path_number(birthday)
    puts birth_path_number_results(birth_path_number)
end

main