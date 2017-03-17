require('pry')

class Room

  attr_reader :guests, :songs

  def initialize(room_name)

    @room_name = room_name
    @guests_in_room = []
    @room_songs_list = []
    
  end

  #add guest to room
  #remove guest from room
  #add song to room
  #remove song from room

  def num_of_guests_in_room
    @guests_in_room.length
  end

  def add_guest_to_room(guest_name)
    @guests_in_room << guest_name
  end

  # def check
    
  # end

  def remove_guest_from_room(guest_name)
    

    # @guests_in_room.delete
    #array.delete_if {|i| i == "str1"
  end



  def num_of_songs_in_room
    @room_songs_list.length()
  end

  def add_song_to_room_songs_list(songs_name)
    return @room_songs_list << songs_name
  end

  def remove_song_from_room(songs_name)
    
  end



  def room_name
    return @room_name
  end


end