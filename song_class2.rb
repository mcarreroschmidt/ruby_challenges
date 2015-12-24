class Song
    
    attr_accessor :title, :composer, :year
    
end

my_song = Song.new
puts "Song Title? "
my_song.title = gets.to_s.chomp
puts "Composer? "
my_song.composer = gets.to_s.chomp
puts "Release year? "
my_song.year = gets.to_s.chomp

puts "\"#{my_song.title}\" was released by #{my_song.composer} in #{my_song.year}."

puts my_song.inspect