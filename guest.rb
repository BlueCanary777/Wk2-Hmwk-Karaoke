class Guest

  attr_reader :name, :wallet

  def initialize (name, wallet)
    @name = name
    @wallet = wallet
  end

  def wallet_payment(room)
    @wallet -= room.price()
  end

end
