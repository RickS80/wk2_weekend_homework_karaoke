class Karaoke_Bar

attr_reader :bar_name, :entry_fee
attr_accessor :till

  def initialize(bar_name, entry_fee)
    @bar_name = bar_name
    @entry_fee = entry_fee
    @till = 200
  end

  def guest_has_enough_money(guest)
   if guest.wallet >= @entry_fee
     return "Please come in"
   else
     return "Bugger off"
   end
  end

  def till_level(till)
    return till
  end

  def new_entry_till_level(number_of_guests)
    total_entry_fee = @entry_fee * number_of_guests
    @till += total_entry_fee
    return @till
  end




end
