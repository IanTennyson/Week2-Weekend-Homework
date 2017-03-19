require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../songs')
require_relative('../guests')
require_relative('../door_queue')


class TestRoom < MiniTest::Test

  def setup


    @song1 = Song.new("Day Man")
    @song2 = Song.new("Star Man")
    @song3 = Song.new("Night Man")
    @song4 = Song.new("Video Killed The Radio Star")
    @song5 = Song.new("Du Hast")
    @song6 = Song.new("Express Yourself - Remix")

    @guest1 = Guest.new("Nicola", 200)
    @guest2 = Guest.new("Ian", 100)
    @guest3 = Guest.new("Paul", 50)
    @guest4 = Guest.new("Laura", 20)
    @guest5 = Guest.new("Mary", 10)
    @guest6 = Guest.new("James", 0)
    

    @room1 = Room.new("Rock Room", 5)
    @room2 = Room.new("Gangsta Rap", 1)
    @room3 = Room.new("Non-Stop POP!", 15)

    @door_queue1 = DoorQueue.new("Pleb Queue")


    
  end



  #test passed
  def test_num_of_songs_in_room
    assert_equal(0, @room2.num_of_songs_in_room(@room2))
  end

#test passed
  def test_num_of_songs_in_room
    @room2.add_song_to_room_playlist(@song4)
    @room1.add_song_to_room_playlist(@song6)
    @room1.add_song_to_room_playlist(@song2)
    assert_equal(1, @room2.num_of_songs_in_room())
  end

#test passed
  def test_num_of_songs_in_room()
    @room1.add_song_to_room_playlist(@song1)
    @room1.add_song_to_room_playlist(@song3)
    @room1.add_song_to_room_playlist(@song4)
    @room2.add_song_to_room_playlist(@song2)
    assert_equal(3, @room1.num_of_songs_in_room())
  end



#test passed
  def test_add_song_to_room_playlist()
    @room2.add_song_to_room_playlist(@song3)
    @room2.add_song_to_room_playlist(@song4)
    @room2.add_song_to_room_playlist(@song5)
    @room1.add_song_to_room_playlist(@song2)
    @room1.add_song_to_room_playlist(@song1)
    assert_equal(2, @room1.num_of_songs_in_room())
  end

#test passed
  def test_add_song_to_room_playlist()
    @room2.add_song_to_room_playlist(@song3)
    @room2.add_song_to_room_playlist(@song4)
    @room3.add_song_to_room_playlist(@song5)
    @room1.add_song_to_room_playlist(@song2)
    @room1.add_song_to_room_playlist(@song1)
    assert_equal(1, @room3.num_of_songs_in_room())
  end



#test passed
  def test_room_has_name
    assert_equal("Rock Room", @room1.room_name())
    assert_equal("Gangsta Rap", @room2.room_name())
    assert_equal("Non-Stop POP!", @room3.room_name())
  end


#test passed
  def test_num_of_guests_in_room()
    assert_equal(0, @room1.num_of_guests_in_room())
  end

#test passed
  def test_num_of_guests_in_room()
    @room3.add_guest_to_room(@guest5, @door_queue1)
    @room1.add_guest_to_room(@guest6, @door_queue1)
    @room2.add_guest_to_room(@guest1, @door_queue1)
    @room2.add_guest_to_room(@guest2, @door_queue1)
    @room2.add_guest_to_room(@guest3, @door_queue1)
    @room2.add_guest_to_room(@guest4, @door_queue1)
    assert_equal(1, @room2.num_of_guests_in_room())
  end



#test passed
  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1, @door_queue1)
    @room1.add_guest_to_room(@guest2, @door_queue1)
    @room2.add_guest_to_room(@guest3, @door_queue1)
    @room3.add_guest_to_room(@guest4, @door_queue1)
    assert_equal(2, @room1.num_of_guests_in_room())
  end




#Not Passed



  def test_return_excess_guests_to_door_queue
    @door_queue1.add_to_door_queue(@guest1)
    @door_queue1.add_to_door_queue(@guest2)
    @door_queue1.add_to_door_queue(@guest3)
    @room2.move_guest_from_door_to_room(@door_queue1)
    assert_equal(2, @door_queue1.length_of_door_queue())
  end








#test passed
  def test_is_guest_in_room
    @room1.add_guest_to_room(@guest1, @door_queue1)
    @room1.add_guest_to_room(@guest2, @door_queue1)
    assert_equal("Nicola is in the Rock Room", @room1.check_guest_is_in_room(@guest1))
  end

#test passed
  def test_is_guest_in_room_guest_not_found
    @room1.add_guest_to_room(@guest1, @door_queue1)
    @room1.add_guest_to_room(@guest2, @door_queue1)
    assert_equal("Sorry, Paul isn't here", @room1.check_guest_is_in_room(@guest3))
  end

#test passed
  def test_remove_guest_from_room
    @room2.add_guest_to_room(@guest3, @door_queue1)
    @room1.add_guest_to_room(@guest1, @door_queue1)
    @room1.add_guest_to_room(@guest2, @door_queue1)
    @room1.remove_guest_from_room(@guest1)
    assert_equal(1, @room1.num_of_guests_in_room())
  end

#test passed
  def test_remove_song_from_room_playlist
    @room1.add_song_to_room_playlist(@song1)
    @room1.add_song_to_room_playlist(@song2)
    @room1.remove_song_from_room(@song1)
    assert_equal(1, @room1.num_of_songs_in_room())
  end

  def test_room_capacity
    assert_equal(1, @room2.room_capacity())
  end

#test passed
  def test_room_full()
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)    
    @room1.add_guest_to_room(@guest4)
    @room1.add_guest_to_room(@guest5)
    @room1.add_guest_to_room(@guest6)

    assert_equal(5, @room1.num_of_guests_in_room())
  end
#test passed
  def test_room_full
    @room2.add_guest_to_room(@guest1, @door_queue1)
    assert_equal("The Gangsta Rap room is full, Ian has been returned to the Pleb Queue.", @room2.add_guest_to_room(@guest2, @door_queue1))
  end

#test passed
def test_add_and_remove_from_door
  @door_queue1.add_to_door_queue(@guest1)
  @room2.move_guest_from_door_to_room(@door_queue1)

  assert_equal(0, @door_queue1.length_of_door_queue)
  assert_equal(1, @room2.num_of_guests_in_room)
end

#test passed
def test_add_and_remove_multiple_ppl_from_door
  @door_queue1.add_to_door_queue(@guest1)
  @door_queue1.add_to_door_queue(@guest2)
  @door_queue1.add_to_door_queue(@guest3)
  @door_queue1.add_to_door_queue(@guest4)
  @door_queue1.add_to_door_queue(@guest5)
  @door_queue1.add_to_door_queue(@guest6)
  @room1.move_guest_from_door_to_room(@door_queue1)
  assert_equal(1, @door_queue1.length_of_door_queue)
  assert_equal(5, @room1.num_of_guests_in_room)
end

#test passed
def test_add_ppl_to_room_delete_from_door
  @door_queue1.add_to_door_queue(@guest1)
  @door_queue1.add_to_door_queue(@guest2)
  @door_queue1.add_to_door_queue(@guest3)
  @door_queue1.add_to_door_queue(@guest4)
  @door_queue1.add_to_door_queue(@guest5)
  @door_queue1.add_to_door_queue(@guest6)
  @room1.move_guest_from_door_to_room(@door_queue1)
  assert_equal(1, @door_queue1.length_of_door_queue)
  assert_equal(5, @room1.num_of_guests_in_room)
end

def test_add_ppl_to_room_delete_from_door_extra_ppl_sent_back_to_door
  @door_queue1.add_to_door_queue(@guest1)
  @door_queue1.add_to_door_queue(@guest2)
  @room2.move_guest_from_door_to_room(@door_queue1)
  assert_equal(1, @door_queue1.length_of_door_queue)
  assert_equal(1, @room2.num_of_guests_in_room)
end

def test_message_that_guest_has_been_returned_to_the_door
  @door_queue1.add_to_door_queue(@guest1)
  @door_queue1.add_to_door_queue(@guest2)
  @room2.move_guest_from_door_to_room(@door_queue1)
  assert_equal("The Gangsta Rap room is full, Ian has been returned to the Pleb Queue.", @room2.add_guest_to_room(@guest2, @door_queue1))
end


end