require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../guest')

class TestKaraoke_Bar < MiniTest::Test

  def setup
    @bar = Karaoke_Bar.new("Supercube", 50)
    @guest1 = Guest.new("Rick", 100)
    @guest2 = Guest.new("Midori", 30)
  end

  def test_bar_has_name
    assert_equal("Supercube", @bar.bar_name)
  end

  def test_bar_has_entry_fee
    assert_equal(50, @bar.entry_fee)
  end

  def test_guest_has_enough_money_pass
    
  end

  def test_guest_has_enough_money_fail

  end

end
