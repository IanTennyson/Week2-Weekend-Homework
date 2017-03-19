require('pry')


class DoorQueue

  attr_reader :queue_name, :queue

  def initialize(queue_name)
    @queue_name = queue_name
    @queue = []
  end

  def queue_name
    return @queue_name
  end

  def add_to_door_queue(guest_name)
    @queue << guest_name
  end

  def length_of_door_queue()
    #binding.pry
    @queue.length
  end

  def clear_queue()
    @queue.clear
  end

  def remove_guest_from_door_queue(guest_name)
    @queue.delete_if { |guest| guest == guest_name }
  end

end