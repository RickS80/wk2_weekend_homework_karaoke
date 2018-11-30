class Room

attr_accessor :room_name, :room_capacity, :room_status


  def initialize(room_name, room_capacity)
    @room_name = room_name
    @room_capacity = room_capacity
    @room_status = []
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



end
