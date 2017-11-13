require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
# require_relative('../room.rb')


class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Pat", 5.0)
    @guest2 = Guest.new("Jill", 2.0)
    @guest3 = Guest.new("Kevin", 3.0)
    @guest4 = Guest.new("Sarah", 10.0)
  end
  def test_guest_has_name
    assert_equal("Pat", @guest1.name())
  end

  def test_guest_has_money
    assert_equal(5.0, @guest1.wallet())
  end
end
