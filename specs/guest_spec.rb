require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Rick", 100)
    @guest2 = Guest.new("Midori", 50)
    @guest3 = Guest.new("Kaia", 50)
    @guest4 = Guest.new("Fin", 50)
    @guest5 = Guest.new("Seb", 50)
    @guest6 = Guest.new("Panpan", 50)
    @guest7 = Guest.new("Houdini", 50)
    @group = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]
  end

  def test_guest_has_name
    assert_equal("Rick", @guest1.guest_name)
  end

  def test_guest_wallet_content
    assert_equal(100, @guest1.wallet)
  end



end
