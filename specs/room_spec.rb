require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup()


    @room = Room.new("Lizard Lounge", 3, 3.0)
    @room2 = Room.new("Rock Room", 5, 3.0)

    @room.add_guest(@guest2)

    @song1 = Song.new("Fool's Gold", "The Stone Roses")
    @song2 = Song.new("Suzanne", "Leonard Cohen")
    @song3 = Song.new("Fade Into You", "Mazzy Star")
    @song4 = Song.new("Last Train to Clarksville", "The Monkeys")

    @room.add_song(@song4)

  end

  def test_room_can_add_guest
    @room.add_guest(@guest3)
    assert_equal(2, @room.guests.length)
  end

  def test_guest_removal
    @room.remove_all_guests
    assert_equal(0, @room.guests.count)
  end

  def test_room_full
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    assert_equal(3, @room.guests.count)
    assert_equal(true, @room.room_full?)
  end

  def test_room_not_full
    assert_equal(1, @room.guests.count)
    assert_equal(false, @room.room_full?)
  end

  def test_guest_not_admitted
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    assert_equal(true, @room.room_full?)
    assert_equal(true, @room.guest_not_admitted)
  end

end
