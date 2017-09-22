class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files

    @files = Dir.entries("#{@path}").select {|f| !File.directory? f.to_s}
    # @files.each {|file_name| file_name.slice!(".mp3").to_s}

  end

  def import
    self.files
    @files.each {|file_name| song = Song.new_by_filename(file_name)}
  end

end
