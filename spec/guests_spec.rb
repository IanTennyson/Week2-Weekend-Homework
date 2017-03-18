require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup

    @guest1 = Guest.new("Sarah", 50)

  end

  def test_return_guest_name
    assert_equal("Sarah", @guest1.guest_name())
  end


end