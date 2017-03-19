require('minitest/autorun')
require('minitest/rg')
require_relative('../door_queue')
require_relative('../guests')
require_relative('../room')



class TestDoorQueue < MiniTest::Test

  def setup

   @door_queue1 = DoorQueue.new("Pleb Queue")
   @door_queue2 = DoorQueue.new("VIP Queue")

   @guest1 = Guest.new("Nicola", 200)
   @guest2 = Guest.new("Ian", 100)
   @guest3 = Guest.new("Sarah", 50)
   @guest4 = Guest.new("Laura", 20)

   # @song1 = Song.new("Day Man")
   # @song2 = Song.new("Star Man")

  end

  # def test_queue_name
  #   assert_equal("Pleb Queue", @door_queue1.queue_name())
  #   assert_equal("VIP Queue", @door_queue2.queue_name())
  # end

  # def test_add_to_door_queue
  #   @door_queue1.add_to_door_queue(@guest1)
  #   @door_queue1.add_to_door_queue(@guest2)
  #   @door_queue1.add_to_door_queue(@guest3)
  #   @door_queue1.add_to_door_queue(@guest4)
  #   assert_equal(4, @door_queue1.length_of_door_queue)
  # end

  # def test_length_of_door_queue
  #   assert_equal(0, @door_queue1.length_of_door_queue())
  #   assert_equal(0, @door_queue2.length_of_door_queue())
  # end

  def test_remove_guest_from_door


    @door_queue1.add_to_door_queue(@guest1)
    @door_queue1.add_to_door_queue(@guest2)
    @door_queue1.remove_guest_from_door_queue(@guest2)
    assert_equal(1, @door_queue1.length_of_door_queue)
    
  end

end