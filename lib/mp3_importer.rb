class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").map {|file| file.gsub("#{@path}/", "")}
  end

  def import
    self.files.each {|file| Song.new_by_filename}
  end
end
