require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup

    @songs = Song.new("Smells like teen spirit")
    
  end

  def test_return_song_name
    assert_equal("Smells like teen spirit", @songs.song_name())
  end

end