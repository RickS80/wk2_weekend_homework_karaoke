require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Western", 5)
  end

  def test_room_has_name
    assert_equal("Western", @room1.room_name)
  end

  def test_room_has_capacity
    assert_equal(5, @room1.room_capacity)
  end 

end
