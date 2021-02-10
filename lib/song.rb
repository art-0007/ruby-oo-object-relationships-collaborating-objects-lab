#require 'pry'
class Song
    attr_accessor :name, :artist
    
 @@all = []   

def initialize(name)
    @name = name
    @@all << self
end


def self.all
    @@all
end

def self.new_by_filename(file_name)    
arr = file_name.split(/\s\-\s/)
#binding.pry
song = Song.new(arr[1])
#binding.pry
song.artist_name =(arr[0])
#binding.pry
song
end

def artist_name=(name)
   # binding.pry
art = Artist.find_or_create_by_name(name)
art.add_song(self)
end
end