class Karaoke_Bar

attr_reader :bar_name, :entry_fee

  def initialize(bar_name, entry_fee)
    @bar_name = bar_name
    @entry_fee = entry_fee
  end

  def guest_has_enough_money(guest)
   if guest.wallet >= @entry_fee
     return "Please come in"
   else
     return "Bugger off"
   end
  end

end
