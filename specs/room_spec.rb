require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Boogie Wonderland", 5)
    @song1 = Song.new("Bohemian Rhapsody", "Queen")
    @song2 = Song.new("Piano Man", "Billy Joel")
    @song3 = Song.new("Roar", "Katy Perry")
    @guest1 = Guest.new("Rick", 100, @song1, "25 January")
    @guest2 = Guest.new("Midori", 50, @song1, "16 August")
    @guest3 = Guest.new("Kaia", 50, @song2, "28 July")
    @guest4 = Guest.new("Fin", 50, @song2, "15 October")
    @guest5 = Guest.new("Seb", 50, @song2, "9 November")
    @guest6 = Guest.new("Panpan", 50, @song3, "25 December")


  end

  def test_room_has_name
    assert_equal("Boogie Wonderland", @room1.room_name)
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

  def test_guest_leaves
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.guest_leaves(@guest1)
    assert_equal(2, @room1.room_pax_count)
  end

  def test_add_song_to_room_song_playlist
    @room1.add_song(@song1)
    assert_equal(1, @room1.check_playlist_count)
  end

  def test_favourite_song_return__guest_present
    @room1.add_guest(@guest1)
    assert_equal("Whoo", @room1.favourite_song_reply(@guest1, @song1))
  end

  def test_guest_present_but_song_is_not_favourite
    @room1.add_guest(@guest1)
    assert_equal("My favourite song is Bohemian Rhapsody, play that!", @room1.favourite_song_reply(@guest1, @song2))
  end

  def test_favourite_song__but_guest_not_present
    @room1.add_guest(@guest2)
    assert_nil(@room1.favourite_song_reply(@guest1, @song1))
  end

  # def test_katy_perry_response
  #   @room1.add_song(@song1)
  #   @room1.add_song(@song2)
  #   @room1.add_song(@song3)
  #   assert_equal("You picked Katy Perry! You have won a prize", @room1.katy_perry)
  # end

end
