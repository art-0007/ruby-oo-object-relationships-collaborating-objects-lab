#require 'pry'
class Artist
   attr_accessor :name

   @@all = []

def initialize(name)
    @name = name
    save
end

def self.all
    @@all   
end

def save
    self.class.all << self
end

def add_song(song)
    song.artist = self   
end

def songs
    Song.all.select {|song| song.artist == self}
end

def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
end


def self.find_or_create_by_name(name)
artist_name = @@all.detect{|el| el.name == name}
   if artist_name == nil
       self.create_by_name(name)
    else
         artist_name
   end
      
end
#binding.pry

def print_songs
    self.songs.each {|song| puts "#{song.name}\n"}
end


end