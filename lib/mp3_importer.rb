class MP3Importer
    attr_accessor :path
 
def initialize(path)
    @path = path 
    
end
    
def files
    path_ = @path + "/**/*.mp3"
    Dir[path_].map{ |f| File.basename(f)}
end

def import
    arr = self.files
    arr.each {|file| Song.new_by_filename(file)}
end

    
end