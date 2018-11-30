class Room

attr_reader :room_name, :room_capacity

  def initialize(room_name, room_capacity)
    @room_name = room_name
    @room_capacity = room_capacity
  end

end
