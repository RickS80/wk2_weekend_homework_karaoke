require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Western", 5)
    @guest1 = Guest.new("Rick", 100)
    @guest2 = Guest.new("Midori", 50)
    @guest3 = Guest.new("Kaia", 50)
    @guest4 = Guest.new("Fin", 50)
    @guest5 = Guest.new("Seb", 50)
    @guest6 = Guest.new("Panpan", 50)
    @guest7 = Guest.new("Houdini", 50)
    @group = @guest1, @guest2, @guest3, @guest4, @guest5
  end

  def test_room_has_name
    assert_equal("Western", @room1.room_name)
  end

  def test_room_has_capacity
    assert_equal(5, @room1.room_capacity)
  end

  def test_add_one_guest
    assert_equal([@guest1], @room1.add_guest(@guest1))
  end

  def test_add_two_guests
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    assert_equal([@guest1,@guest2], @room1.room_status)
  end

  def test_room_status
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest4)
    assert_equal(4, @room1.room_pax_count)
  end

  def test_room_can_accept_guest__fail
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest4)
    @room1.add_guest(@guest5)
    assert_equal("Room is full", @room1.add_guest(@guest6))
  end

def test_room_can_accept_guest__pass
  @room1.add_guest(@guest1)
  @room1.add_guest(@guest2)
  @room1.add_guest(@guest3)
  @room1.add_guest(@guest4)
  @room1.add_guest(@guest5)
  assert_equal(5, @room1.room_pax_count)
end

  # def test_guest_leaves
  #   @room1.add_guest(@guest1)
  #   @room1.add_guest(@guest2)
  #   @room1.delete(@guest1)
  #   assert_equal([@guest2], @room1.room_status)
  # end


end
