require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../songs')
require_relative('../guests')


class TestRoom < MiniTest::Test

  def setup

    #an array or hash of songs. See pet shop example

    @song1 = Song.new("Day Man")
    @song2 = Song.new("Star Man")
    @song3 = Song.new("Night Man")
    @song4 = Song.new("Star Man")
    @song5 = Song.new("Du Hast")
    @song6 = Song.new("Express Yourself - Remix")

    @guest1 = Guest.new("Nicola")
    @guest2 = Guest.new("Ian")
    @guest3 = Guest.new("Sarah")
    @guest4 = Guest.new("Laura")
    @guest5 = Guest.new("Sharon")
    @guest6 = Guest.new("Mark")
    

    @room1 = Room.new("Rock Room", 5)
    @room2 = Room.new("Gangsta Rap", 1)
    
  end

  def test_num_of_songs_in_room
    assert_equal(0, @room2.num_of_songs_in_room(@room2))
  end

  def test_num_of_songs_in_room
    add_song_to_room_songs_list(@song2)
    assert_equal(1, @room2.num_of_songs_in_room(@room2))
  end


#checked
  def test_num_of_songs_in_room()
    @room1.add_song_to_room_songs_list(@song1)
    @room2.add_song_to_room_songs_list(@song2)
    assert_equal(1, @room2.num_of_songs_in_room(@room2))
  end

  def test_add_song_to_room_songs_list()
    @room1.add_song_to_room_songs_list(@song2)
    @room1.add_song_to_room_songs_list(@song1)
    assert_equal(2, @room1.num_of_songs_in_room(@room1))
  end

  def test_room_has_name
    assert_equal("Rock Room", @room1.room_name)
  end

  def test_room_has_name
    assert_equal("Gangsta Rap", @room2.room_name)
  end














  def test_num_of_guests_in_room()
    assert_equal(0, @room1.num_of_guests_in_room(@room1))
  end

  def test_num_of_guests_in_room()
    @room2.add_guest_to_room(@guest1)
    @room2.add_guest_to_room(@guest2)
    @room2.add_guest_to_room(@guest3)
    @room2.add_guest_to_room(@guest4)
    assert_equal(4, @room2.num_of_guests_in_room(@room2))
  end











  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal(2, @room1.num_of_guests_in_room(@room1))
  end

  def test_is_guest_in_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal("Nicola", @room1.check_guest_is_in_room(@guest1))
  end

  def test_is_guest_in_room_guest_not_found
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal("Sorry, Sarah isn't here", @room1.check_guest_is_in_room(@guest3))
  end

  def test_remove_guest_from_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    #@room1.check_guest_is_in_room(@guest1)
    @room1.remove_guest_from_room(@guest1)
    assert_equal(1, @room1.num_of_guests_in_room(@room1))
  end

  def test_remove_song_from_room_playlist
    @room1.add_song_to_room_songs_list(@song1)
    @room1.add_song_to_room_songs_list(@song2)
    #@room1.check_guest_is_in_room(@guest1)
    @room1.remove_song_from_room(@song1)
    assert_equal(1, @room1.num_of_songs_in_room(@room1))
  end

  # def test_room_capacity
  #   # room_capacity(@room2)
  #   assert_equal(1, @room2.room_capacity)
  # end




end