require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Rick", 200)

  end

  def test_guest_has_name
    assert_equal("Rick", @guest1.guest_name)
  end

  def test_guest_wallet_content
    assert_equal(200, @guest1.wallet)
  end

  def test_guest_wallet_after_entry
      assert_equal(150, @guest1.guest_wallet_after_entry(50))
  end



end
