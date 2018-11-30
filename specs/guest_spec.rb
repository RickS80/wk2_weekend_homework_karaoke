require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Rick", 100)
  
  end

  def test_guest_has_name
    assert_equal("Rick", @guest1.guest_name)
  end

  def test_guest_wallet_content
    assert_equal(100, @guest1.wallet)
  end



end
