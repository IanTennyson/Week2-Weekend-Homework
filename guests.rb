class Guest

  attr_reader :guest_name, :cash

  def initialize(guest_name, guest_cash)

    @guest_name = guest_name
    @cash = guest_cash
 
  end

  def guest_name()
    return @guest_name
  end

  def guest_cash
    return @cash
  end

  def add_remove_guest_cash(room_charge)
    return @cash -= room_charge
  end

end