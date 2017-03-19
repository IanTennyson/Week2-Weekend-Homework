require('pry')
require_relative('door_queue')
require_relative('guests')

class Room

  attr_reader :room_charge

  def initialize(room_name, capacity, room_charge)

    @room_name = room_name
    @capacity = capacity
    @room_charge = room_charge

    @guests_in_room = []
    @room_playlist = []
    
    #binding.pry
  end

  def num_of_guests_in_room()
    return @guests_in_room.length
  end

  def check_guest_is_in_room(guest_im_looking_for)

    @guests_in_room.find do |guest| if guest == guest_im_looking_for
      #binding.pry
    return "#{guest.guest_name} is in the #{@room_name}"
  end
  #binding.pry
      return "Sorry, #{guest_im_looking_for.guest_name} isn't here"
    end
  end
  


  def remove_guest_from_room(guest_name)
    @guests_in_room.delete_if { |guest| guest == guest_name }
  end

  def num_of_songs_in_room()
    return @room_playlist.length
    #binding.pry
    
  end

  def add_song_to_room_playlist(songs_name)
    #binding.pry
    return @room_playlist << songs_name
  end

  def remove_song_from_room(songs_name)
    @room_playlist.delete_if { |song| song == songs_name }
  end

  def room_capacity()
    return @capacity
  end

  def room_name()
    #binding.pry
    return @room_name
  end

    def move_guest_from_door_to_room(door)
      #binding.pry
      for guest in door.queue
        add_guest_to_room(guest, door)
      end
    end

    def remove_guest_from_queue(door)
      for guest in @guests_in_room
        door.remove_guest_from_door_queue(guest)
      end
    end


    def add_guest_to_room(guest_name, door_name)
      if @guests_in_room.length >= @capacity
         #binding.pry
        return"The #{@room_name} room is full, #{guest_name.guest_name} has been returned to the #{door_name.queue_name}."
      else
        @guests_in_room << guest_name
      end
    end

# #NoMethodError: undefined method `-' for nil:NilClass
    def remove_guest_cash_for_room_entry(door_name, guest, guest_cash, room_charge)
      #binding.pry
      if guest_cash < room_charge
        door_name.add_to_door_queue(guest)
      else
      return (guest_cash -= room_charge)
      end
    end

    def enter_club(guest, door_queue, guest_cash, room_charge )
      door_queue.add_to_door_queue(guest)
      @room1.remove_guest_cash_for_room_entry(door_queue, guest, guest_cash, room_charge)
      door_queue.remove_guest_from_queue(guest)
      @room1.add_guest_to_room(guest, door_queue)
    end


end
