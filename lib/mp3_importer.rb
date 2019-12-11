class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").map {|file| file.gsub("#{@path}/", "")}
  end
end
