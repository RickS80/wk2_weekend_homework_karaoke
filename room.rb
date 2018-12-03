
class Room

attr_accessor :room_name, :room_capacity, :room_status, :song_playlist


  def initialize(room_name, room_capacity)
    @room_name = room_name
    @room_capacity = room_capacity
    @room_status = []
    @song_playlist = []
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
    @song_playlist << song
  end

  def check_playlist_count
    @song_playlist.length
  end

  def favourite_song_reply(guest, selected_song)
    if selected_song == guest.favourite_song && @room_status.include?(guest)
      return "Whoo"
    elsif selected_song !=guest.favourite_song && @room_status.include?(guest)
      return "My favourite song is #{guest.favourite_song.song_name}, play that!"
    end
  end


end
