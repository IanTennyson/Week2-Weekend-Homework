require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../songs')
require_relative('../guests')


class TestRoom < MiniTest::Test

  def setup

    #an array or hash of songs. See pet shop example

    @songs = Song.new("Star Man")
    @song1 = Song.new("Day Man")

    @guests = Guest.new("Nicola")
    @guests1 = Guest.new("Ian")

    @room1 = Room.new("Rock Room")
    
  end

  def test_num_of_songs_in_room
    assert_equal(0, @room1.num_of_songs_in_room)
  end

  def test_num_of_songs_in_room
    @room1.add_song_to_room_songs_list(@songs)
    assert_equal(1, @room1.num_of_songs_in_room)
  end

  def test_add_song_to_room_songs_list()
    @room1.add_song_to_room_songs_list(@songs)
    @room1.add_song_to_room_songs_list(@song1)
    assert_equal(2, @room1.num_of_songs_in_room)
  end

  def test_room_has_name
    assert_equal("Rock Room", @room1.room_name)
  end

  def test_num_of_guests_in_room
    assert_equal(0, @room1.num_of_guests_in_room)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guests)
    @room1.add_guest_to_room(@guests1)
    assert_equal(2, @room1.num_of_guests_in_room)
  end

  def test_remove_guest_from_room
    @room1.add_guest_to_room(@guests)
    @room1.add_guest_to_room(@guests1)
    @room1.remove_guest_from_room(@guests)
    assert_equal(1, @room1.num_of_guests_in_room)
  end


end