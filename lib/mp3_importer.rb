
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
    Song.new_by_filename(self.files)
end

    
end