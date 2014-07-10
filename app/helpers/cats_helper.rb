module CatsHelper

  def show_me_the_money(bro)
    number_to_currency(bro.price / 100.0)
  end


end
