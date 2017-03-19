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

  def test_guest_has_cash
    assert_equal(50, @guest1.guest_cash)
  end

  def test_add_to_customer_cash
    assert_equal(60, @guest1.add_remove_guest_cash(10))
  end

  def test_remove_to_customer_cash
    assert_equal(40, @guest1.add_remove_guest_cash(-10))
  end


end