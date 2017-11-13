class Song

  attr_reader :title, :artist

  def initialize (title, artist)
    @title = title
    @artist = artist
  end

  def song_selection
    puts "Now Playing: #{@title} by #{@artist}"
  end


end
