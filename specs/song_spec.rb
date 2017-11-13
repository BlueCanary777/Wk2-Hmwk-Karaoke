require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

 class TestGuest < MiniTest::Test

  def setup()
    @song = Song.new("Fool's Gold", "The Stone Roses")
  end


  def test_song_has_title
    assert_equal("Fool's Gold", @song.title)
  end

  def test_song_has_artist
    assert_equal("The Stone Roses", @song.artist)
  end

end
