class Pet

	def set_species=(species_name); @species = species_name; end
	def get_species; return @species; end
	
	def set_name=(pet_name); @pet_name = pet_name; end
 	def get_name; return @pet_name; end
 
	def set_owner=(owner_name); @owner_name = owner_name; end
	def get_owner; return @owner_name; end
 
	def set_noise=(noise); @noise = noise; end
	def get_noise; return @noise; end
 
end

class Ferret < Pet
	def get_species; return "ferret"; end
	def get_noise; return "squeeeeee"; end
end
class Parrot < Pet
	def get_species; return "parrot"; end
	def get_noise; return "squawk"; end
end
class Chinchilla < Pet
	def get_species; return "chinchilla"; end
	def get_noise; return "eeeep"; end
end

my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
 
my_chincilla = Chinchilla.new
my_chincilla.set_name= "Dali"
 
puts "#{my_ferret.get_name} the #{my_ferret.get_species} says \"#{my_ferret.get_noise}\", 
#{my_parrot.get_name} the #{my_parrot.get_species} says \"#{my_parrot.get_noise}\", 
and #{my_chincilla.get_name} the #{my_chincilla.get_species} says \"#{my_chincilla.get_noise}.\""
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect