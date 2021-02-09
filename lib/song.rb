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
art = artist_name=(arr[0])
song.artist = art
song
end

def artist_name=(artist_name)
   # binding.pry
art = Artist.find_or_create_by_name(artist_name)
art.add_song(self)
end
end