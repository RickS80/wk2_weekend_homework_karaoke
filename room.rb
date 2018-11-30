require('pry')

class Room


attr_accessor :room_name, :room_capacity, :room_status, :song_library


  def initialize(room_name, room_capacity)
    @room_name = room_name
    @room_capacity = room_capacity
    @room_status = []
    @song_library = []
  end

  def add_guest(guest)
    if @room_status.length < @room_capacity
    @room_status << guest
    else "Room is full"
    end
  end

  def room_pax_count
    @room_status.length
  end

  def guest_leaves(guest)
    @room_status.delete(guest)
  end

  def add_song(song)
    @song_library << song
  end
  
  def check_playlist_count
    @song_library.length
  end

end
