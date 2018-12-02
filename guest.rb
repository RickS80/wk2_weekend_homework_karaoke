class Guest

  attr_accessor :guest_name, :wallet, :favourite_song, :birthday

  def initialize(guest_name, wallet, favourite_song, birthday)
    @guest_name = guest_name
    @wallet = wallet
    @favourite_song = favourite_song
    @birthday = birthday
  end

  def guest_wallet_after_entry(entry_fee)
    new_total = @wallet -= entry_fee
    return new_total
  end

end
