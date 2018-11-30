class Guest

  attr_reader :guest_name, :wallet

  def initialize(guest_name, wallet)
    @guest_name = guest_name
    @wallet = wallet
  end

  def guest_wallet_after_entry(entry_fee)
    new_total = @wallet -= entry_fee
    return new_total
  end

end
