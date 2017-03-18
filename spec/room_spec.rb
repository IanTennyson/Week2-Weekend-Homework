require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../songs')
require_relative('../guests')


class TestRoom < MiniTest::Test

  def setup

    # guests = { 
    #   Nicola: {
    #     cash: 200,
    #     favourite_song: @song1
    #     },
    #   Ian: {
    #     cash: 100,
    #     favourite_song: @song2
    #     },
    #   Sarah: {
    #     cash: 50,
    #     favourite_song: @song3
    #     },
    #   Laura: {
    #     cash: 20,
    #     favourite_song: @song4
    #     },
    #   Sharon: {
    #     cash: 10,
    #     favourite_song: @song5
    #     },
    #   Mark: {
    #     cash: 0,
    #     favourite_song: @song6
    #   }
    # }

    #an array or hash of songs. See pet shop example

    @song1 = Song.new("Day Man")
    @song2 = Song.new("Star Man")
    @song3 = Song.new("Night Man")
    @song4 = Song.new("Video Killed The Radio Star")
    @song5 = Song.new("Du Hast")
    @song6 = Song.new("Express Yourself - Remix")

    @guest1 = Guest.new("Nicola", 200)
    @guest2 = Guest.new("Ian", 100)
    @guest3 = Guest.new("Sarah", 50)
    @guest4 = Guest.new("Laura", 20)
    @guest5 = Guest.new("Sharon", 10)
    @guest6 = Guest.new("Mark", 0)
    

    @room1 = Room.new("Rock Room", 5)
    @room2 = Room.new("Gangsta Rap", 1)
    @room3 = Room.new("Non-Stop POP!", 15)
    
  end



  # #test passed
  # def test_num_of_songs_in_room
  #   assert_equal(0, @room2.num_of_songs_in_room(@room2))
  # end

# #test passed
#   def test_num_of_songs_in_room
#     @room2.add_song_to_room_playlist(@song4)
#     @room1.add_song_to_room_playlist(@song6)
#     @room1.add_song_to_room_playlist(@song2)
#     assert_equal(1, @room2.num_of_songs_in_room())
#   end

# #test passed
#   def test_num_of_songs_in_room()
#     @room1.add_song_to_room_playlist(@song1)
#     @room1.add_song_to_room_playlist(@song3)
#     @room1.add_song_to_room_playlist(@song4)
#     @room2.add_song_to_room_playlist(@song2)
#     assert_equal(3, @room1.num_of_songs_in_room())
#   end



# #test passed
#   def test_add_song_to_room_playlist()
#     @room2.add_song_to_room_playlist(@song3)
#     @room2.add_song_to_room_playlist(@song4)
#     @room2.add_song_to_room_playlist(@song5)
#     @room1.add_song_to_room_playlist(@song2)
#     @room1.add_song_to_room_playlist(@song1)
#     assert_equal(2, @room1.num_of_songs_in_room())
#   end

# #test passed
#   def test_add_song_to_room_playlist()
#     @room2.add_song_to_room_playlist(@song3)
#     @room2.add_song_to_room_playlist(@song4)
#     @room3.add_song_to_room_playlist(@song5)
#     @room1.add_song_to_room_playlist(@song2)
#     @room1.add_song_to_room_playlist(@song1)
#     assert_equal(1, @room3.num_of_songs_in_room())
#   end



# #test passed
#   def test_room_has_name
#     assert_equal("Rock Room", @room1.room_name())
#   end

# #test passed
#   def test_room_has_name
#     assert_equal("Gangsta Rap", @room2.room_name())
#   end

# #test passed
#   def test_room_has_name
#     assert_equal("Non-Stop POP!", @room3.room_name())
#   end















# #test passed
#   def test_num_of_guests_in_room()
#     assert_equal(0, @room1.num_of_guests_in_room())
#   end

# #test passed
#   def test_num_of_guests_in_room()
#     @room3.add_guest_to_room(@guest5)
#     @room1.add_guest_to_room(@guest6)
#     @room2.add_guest_to_room(@guest1)
#     @room2.add_guest_to_room(@guest2)
#     @room2.add_guest_to_room(@guest3)
#     @room2.add_guest_to_room(@guest4)
#     assert_equal(4, @room2.num_of_guests_in_room())
#   end



# #test passed
#   def test_add_guest_to_room
#     @room1.add_guest_to_room(@guest1)
#     @room1.add_guest_to_room(@guest2)
#     @room2.add_guest_to_room(@guest3)
#     @room3.add_guest_to_room(@guest4)
#     assert_equal(2, @room1.num_of_guests_in_room())
#   end

# #test passed
#   def test_is_guest_in_room
#     @room1.add_guest_to_room(@guest1)
#     @room1.add_guest_to_room(@guest2)
#     assert_equal("Nicola is in the Rock Room", @room1.check_guest_is_in_room(@guest1))
#   end

# #test passed
#   def test_is_guest_in_room_guest_not_found
#     @room1.add_guest_to_room(@guest1)
#     @room1.add_guest_to_room(@guest2)
#     assert_equal("Sorry, Sarah isn't here", @room1.check_guest_is_in_room(@guest3))
#   end

# #test passed
#   def test_remove_guest_from_room
#     @room2.add_guest_to_room(@guest3)
#     @room1.add_guest_to_room(@guest1)
#     @room1.add_guest_to_room(@guest2)
#     @room1.remove_guest_from_room(@guest1)
#     assert_equal(1, @room1.num_of_guests_in_room())
#   end

#test passed
  # def test_remove_song_from_room_playlist
  #   @room1.add_song_to_room_playlist(@song1)
  #   @room1.add_song_to_room_playlist(@song2)
  #   @room1.remove_song_from_room(@song1)
  #   assert_equal(1, @room1.num_of_songs_in_room())
  # end

  # def test_room_capacity
  #   assert_equal(1, @room2.room_capacity())
  # end

  def test_room_full()
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)    
    @room1.add_guest_to_room(@guest4)
    @room1.add_guest_to_room(@guest5)
    @room1.add_guest_to_room(@guest6)

    assert_equal(5, @room1.num_of_guests_in_room())
  end

  def test_room_full
    @room2.add_guest_to_room(@guest1)
    assert_equal("The Gangsta Rap room is full.", @room2.add_guest_to_room(@guest2))
  end




end