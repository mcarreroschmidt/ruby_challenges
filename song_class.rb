class Song
    
    def set_title=(song_title)
        @song_title = song_title
    end
    def get_title
        return @song_title
    end
    def set_composer=(song_composer)
        @song_composer = song_composer
    end
    def get_composer
        return @song_composer
    end
    def set_song_year=(song_song_year)
        @song_song_year = song_song_year
    end
    def get_song_year
        return @song_song_year
    end
end

my_song = Song.new
puts "Song Title? "
my_song.set_title = gets.to_s.chomp
puts "Composer? "
my_song.set_composer = gets.to_s.chomp
puts "Release year? "
my_song.set_song_year = gets.to_s.chomp

puts "\"#{my_song.get_title}\" was released by #{my_song.get_composer} in #{my_song.get_song_year}."

puts my_song.inspect