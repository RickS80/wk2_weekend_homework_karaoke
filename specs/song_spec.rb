require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Bohemian Rhapsody", "Queen")
  end

  def test_song_has_name
    assert_equal("Bohemian Rhapsody", @song1.song_name)
  end

  def test_song_has_artist
    assert_equal("Queen", @song1.song_artist)
  end

end
