require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../guest')
require_relative('../song')

class TestGuest < MiniTest::Test

  def setup
    @song1 = Song.new("Bohemian Rhapsody", "Queen")
    @guest1 = Guest.new("Rick", 200, @song1, "25 January")
  end

  def test_guest_has_name
    assert_equal("Rick", @guest1.guest_name)
  end

  def test_guest_wallet_content
    assert_equal(200, @guest1.wallet)
  end

  def test_guest_favourite_song
    assert_equal(@song1, @guest1.favourite_song)
  end

  def test_guest_birthday
    assert_equal("25 January", @guest1.birthday)
  end 

  def test_guest_wallet_after_entry
      assert_equal(150, @guest1.guest_wallet_after_entry(50))
  end



end
