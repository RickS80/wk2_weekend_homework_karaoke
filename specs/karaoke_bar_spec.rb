require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../song')

class TestKaraoke_Bar < MiniTest::Test

  def setup
    @bar = Karaoke_Bar.new("Supercube", 50)
    @song1 = Song.new("Bohemian Rhapsody", "Queen")
    @guest1 = Guest.new("Rick", 100, @song1, "25 January")
    @guest2 = Guest.new("Midori", 30, @song1, "16 August")
    @till = 200
  end

  def test_bar_has_name
    assert_equal("Supercube", @bar.bar_name)
  end

  def test_bar_has_entry_fee
    assert_equal(50, @bar.entry_fee)
  end

  def test_guest_has_enough_money_pass
   assert_equal("Please come in", @bar.guest_has_enough_money(@guest1))
  end

  def test_guest_has_enough_money_fail
    assert_equal("Bugger off", @bar.guest_has_enough_money(@guest2))
  end

  def test_till_level
    assert_equal(200, @bar.till_level(@till))
  end

  def test_till_level__1_guest
    assert_equal(250, @bar.new_entry_till_level(1))
  end

  def test_till_level__3_guests
    assert_equal(350, @bar.new_entry_till_level(3))
  end



end
