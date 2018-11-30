require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../guest')

class TestKaraoke_Bar < MiniTest::Test

  def setup
    @bar = Karaoke_Bar.new("Supercube", 50)
  end

  def test_bar_has_name
    assert_equal("Supercube", @bar.bar_name)
  end

  def test_bar_has_entry_fee
    assert_equal(50, @bar.entry_fee)
  end

end
